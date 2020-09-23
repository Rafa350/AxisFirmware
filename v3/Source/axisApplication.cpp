#include "eos.h"
#include "HAL\halGPIO.h"
#include "HAL\halINT.h"
#include "HAL\halSYS.h"
#include "HAL\halTMR.h"
#ifdef EOS_PIC32
#include "HAL\PIC32\halCN.h"
#endif
#include "Services/eosDigInputService.h"
#include "Services/eosDigOutputService.h"
#include "axisApplication.h"
#include "axisMotionService.h"
#include "axisMotion.h"
#include "axisMotor.h"
#include "HAL/PIC32/halGPIO.h"


using namespace eos;
using namespace axis;


const int move = 32000;
bool lock = false;

/// ----------------------------------------------------------------------
/// \brief    Constructor del objecte.
///
AxisApplication::AxisApplication():
    sw1EventCallback(this, &AxisApplication::sw1EventHandler),
    sw2EventCallback(this, &AxisApplication::sw2EventHandler) {
    
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei d'entrades digitals.
///
void AxisApplication::configureDigInputService() {
    
    // Inicialitza el ports
    //
#if defined(EOS_PIC32)
    halGPIOInitializePin(SW_SW1_PORT, SW_SW1_PIN, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
    halCNInitializeLine(SW_SW1_CN, HAL_CN_PULL_UP);
    halGPIOInitializePin(SW_SW2_PORT, SW_SW2_PIN, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
    halCNInitializeLine(SW_SW2_CN, HAL_CN_PULL_UP);
#elif defined(EOS_STM32)
    halGPIOInitializePin(SW_SW1_PORT, SW_SW1_PIN, HAL_GPIO_MODE_INPUT | HAL_GPIO_PULL_UP, HAL_GPIO_AF_NONE);
#endif
    
    // Inicialitza el temporitzador
    //
	TMRInitializeInfo tmrInfo;
	tmrInfo.timer = DigInputService_Timer;
	tmrInfo.isrFunction = NULL;
#if defined(EOS_PIC32)
    tmrInfo.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_64;
    tmrInfo.period = ((halSYSGetPeripheralClockFrequency() * DigInputService_TimerPeriod) / 64000) - 1; 
#elif defined(EOS_STM32F4) || defined(EOS_STM32F7)
    tmrInfo.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_1;
    tmrInfo.prescaler = (HAL_RCC_GetPCLK1Freq() / 1000000L) - 1; // 1MHz
    tmrInfo.period = (1000 * AXIS_INPUTS_TIMER_PERIOD) - 1;
#else
    //#error CPU no soportada
#endif   
	halTMRInitialize(&tmrInfo);
    halTMRSetInterruptPriority(DigInputService_Timer, DigInputService_TimerInterruptPriority, DigInputService_TimerInterruptPriority);
    
    // Inicialitza el servei
    //
    DigInputService::InitParams digInputServiceInit;
    digInputServiceInit.timer = DigInputService_Timer;
    digInputService = new DigInputService(this, digInputServiceInit);
    
    DigInput::InitParams digInputInit;
    digInputInit.eventParam = nullptr;
    
    // Inicialitza la entrada SW_SW1
    //
    digInputInit.port = SW_SW1_PORT;
    digInputInit.pin = SW_SW1_PIN;
    digInputInit.eventCallback = &sw1EventCallback;
    sw1 = new DigInput(digInputService, digInputInit);

    // Inicialitza la entrada SW_SW2
    //
    digInputInit.port = SW_SW2_PORT;
    digInputInit.pin = SW_SW2_PIN;
    digInputInit.eventCallback = &sw2EventCallback;
    sw2 = new DigInput(digInputService, digInputInit);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei de sortides digitals.
///
void AxisApplication::configureDigOutputService() {
    
    // Inicialitza els ports
    //
    halGPIOInitializePin(LED_LED3_PORT, LED_LED3_PIN,
        HAL_GPIO_MODE_OUTPUT_PP | HAL_GPIO_INIT_CLR, HAL_GPIO_AF_NONE);
    
    // Inicialitza el temporitzador
    //
	TMRInitializeInfo tmrInfo;
	tmrInfo.timer = DigOutputService_Timer;
	tmrInfo.isrFunction = NULL;
#if defined(EOS_PIC32)
    tmrInfo.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_64;
    tmrInfo.period = ((halSYSGetPeripheralClockFrequency() * DigOutputService_TimerPeriod) / 64000) - 1; 
#elif defined(EOS_STM32F4) || defined(EOS_STM32F7)
    tmrInfo.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_1;
    tmrInfo.prescaler = (HAL_RCC_GetPCLK1Freq() / 1000000L) - 1; // 1MHz
    tmrInfo.period = (1000 * AXIS_INPUTS_OUTPUTS_PERIOD) - 1;
#else
    //#error CPU no soportada
#endif   
	halTMRInitialize(&tmrInfo);
    halTMRSetInterruptPriority(DigOutputService_Timer, DigOutputService_TimerInterruptPriority, DigOutputService_TimerInterruptSubPriority);    
    
    // Inicialitza el servei
    //
    DigOutputService::InitParams digOutputServiceInit;
    digOutputServiceInit.timer = DigOutputService_Timer;
    digOutputService = new DigOutputService(this, digOutputServiceInit);
    
    DigOutput::InitParams digOutputInit;

    // Inicialitza la sortida LED_LED3
    //
    digOutputInit.port = LED_LED3_PORT;
    digOutputInit.pin = LED_LED3_PIN;
    led3 = new DigOutput(digOutputService, digOutputInit);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei de control de moviment.
///
void AxisApplication::configureMotionService() {
    
    // Inicialitza els ports
    //
    GPIOInitializePinInfo gpioInit;
    
    gpioInit.options = HAL_GPIO_MODE_OUTPUT_PP | HAL_GPIO_INIT_CLR;
    gpioInit.alt = HAL_GPIO_AF_NONE;

    gpioInit.port = MotionService_XMotorStepPort;
    gpioInit.pin = MotionService_XMotorStepPin;
    halGPIOInitializePins(&gpioInit, 1);

    gpioInit.port = MotionService_XMotorDirectionPort;
    gpioInit.pin = MotionService_XMotorDirectionPin;
    halGPIOInitializePins(&gpioInit, 1);
    
    gpioInit.port = MotionService_YMotorStepPort;
    gpioInit.pin = MotionService_YMotorStepPin;
    halGPIOInitializePins(&gpioInit, 1);

    gpioInit.port = MotionService_YMotorDirectionPort;
    gpioInit.pin = MotionService_YMotorDirectionPin;
    halGPIOInitializePins(&gpioInit, 1);

    gpioInit.port = MotionService_ZMotorStepPort;
    gpioInit.pin = MotionService_ZMotorStepPin;
    halGPIOInitializePins(&gpioInit, 1);

    gpioInit.port = MotionService_ZMotorDirectionPort;
    gpioInit.pin = MotionService_ZMotorDirectionPin;
    halGPIOInitializePins(&gpioInit, 1);

    // Inicialitza el temporitzador
    //
    TMRInitializeInfo tmrInit;
    
    Motor::Configuration motorCfg;
    
    // Crea el motor del eix X
    //
    motorCfg.stepPort = MotionService_XMotorStepPort;
    motorCfg.stepPin = MotionService_XMotorStepPin;
    motorCfg.directionPort = MotionService_XMotorDirectionPort;
    motorCfg.directionPin = MotionService_XMotorDirectionPin;
    motorCfg.enablePort = MotionService_XMotorEnablePort;
    motorCfg.enablePin = MotionService_XMotorEnablePin;

    xMotor = new Motor(motorCfg);

    // Crea el motor del eix Y
    //
    motorCfg.stepPort = MotionService_YMotorStepPort;
    motorCfg.stepPin = MotionService_YMotorStepPort;
    motorCfg.directionPort = MotionService_YMotorDirectionPort;
    motorCfg.directionPin = MotionService_YMotorDirectionPin;
    motorCfg.enablePort = MotionService_YMotorEnablePort;
    motorCfg.enablePin = MotionService_YMotorEnablePin;
    yMotor = new Motor(motorCfg);

    // Crea el motor del eix Z
    //    
    motorCfg.stepPort = MotionService_ZMotorStepPort;
    motorCfg.stepPin = MotionService_ZMotorStepPin;
    motorCfg.directionPort = MotionService_ZMotorDirectionPort;
    motorCfg.directionPin = MotionService_ZMotorDirectionPin;
    motorCfg.enablePort = MotionService_ZMotorEnablePort;
    motorCfg.enablePin = MotionService_ZMotorEnablePin;
    zMotor = new Motor(motorCfg);

    // Crea el controlador de moviment
    //
    Motion::Configuration motionCfg;
    motionCfg.numAxis = 3;
    motionCfg.motors[0] = xMotor;
    motionCfg.motors[1] = yMotor;
    motionCfg.motors[2] = zMotor;
    motionCfg.timer = MotionService_Timer;
    motion = new Motion(motionCfg);      
    motion->setJerk(50000);
    motion->setMaxAcceleration(800000);
    motion->setMaxSpeed(800000);
    
    // Crea el servei de control de moviment
    //
    //motionService = new MotionService(this, motion);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza l'aplicacio.
///
void AxisApplication::onInitialize() {
       
    configureMotionService();
    //fsmService = new FsmService(this, nullptr);
    configureDigInputService();
    configureDigOutputService();
}


void AxisApplication::sw1EventHandler(
    const DigInput::EventArgs& args) {
    
    if (!sw1->read()) {
        led3->pulse(250);
        motion->doMoveRel(0, move);
    }
}


void AxisApplication::sw2EventHandler(
    const DigInput::EventArgs& args) {
    
    if (!sw2->read()) {
        led3->pulse(250);
        motion->doMoveRel(0, -move);
    }
}
