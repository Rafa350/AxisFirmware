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
#include "axisP2PMotion.h"
#include "axisMotor.h"


using namespace eos;
using namespace axis;


static TMRData digInputTimerData;      // Dades del temporitzador pel servei DigInput
static TMRData digOutputTimerData;     // Dades del temporitzador pel servei DigOutput
static TMRData motionTimerData;        // Dades del temporitzador pel control de moviment

TMRHandler hDigInputTimer;             // Handler del temporitzador
TMRHandler hDigOutputTimer;            // Handler del temporitzador
TMRHandler hMotionTimer;               // Handler del temporitzador


/// ----------------------------------------------------------------------
/// \brief    Constructor del objecte.
///
AxisApplication::AxisApplication():
    sw1EventCallback(this, &AxisApplication::sw1EventHandler)
#ifdef EXIST_SWITCHES_SW2
    , sw2EventCallback(this, &AxisApplication::sw2EventHandler)
#endif
#ifdef EXIST_SWITCHES_SW3
    , sw3EventCallback(this, &AxisApplication::sw3EventHandler)
#endif
{

}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei d'entrades digitals.
///
void AxisApplication::configureDigInputService() {

    // Inicialitza el ports
    //
#if defined(EOS_PIC32)
    halGPIOInitializePin(SWITCHES_SW1_PORT, SWITCHES_SW1_PIN, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
    halCNInitializeLine(SWITCHES_SW1_CN, HAL_CN_PULL_UP);
#ifdef EXIST_SWITCHES_SW2
    halGPIOInitializePin(SWITCHES_SW2_PORT, SWITCHES_SW2_PIN, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
    halCNInitializeLine(SWITCHES_SW2_CN, HAL_CN_PULL_UP);
#endif
#elif defined(EOS_STM32)
    halGPIOInitializePin(SWITCHES_SW1_PORT, SWITCHES_SW1_PIN, HAL_GPIO_MODE_INPUT | HAL_GPIO_PULL_UP, HAL_GPIO_AF_NONE);
#ifdef EXIST_SWITCHES_SW2
#endif
#endif

    // Inicialitza el temporitzador
    //
	TMRInitializeInfo tmrInfo;
	tmrInfo.timer = DigInputService_Timer;
#if defined(EOS_PIC32)
    tmrInfo.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_64;
    tmrInfo.period = ((DigInputService_TimerClockFrequency * DigInputService_TimerPeriod) / 64000) - 1;
#elif defined(EOS_STM32F4) || defined(EOS_STM32F7)
    tmrInfo.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_1;
    tmrInfo.prescaler = (DigInputService_TimerClockFrequency / 1000000L) - 1;
    tmrInfo.period = (1000 * DigInputService_TimerPeriod) - 1;
#else
    //#error CPU no soportada
#endif
	hDigInputTimer = halTMRInitialize(&digInputTimerData, &tmrInfo);

	// Inicialitza les interrupcions associades al temporitzador
	//
    halINTSetInterruptVectorPriority(DigInputService_TimerInterruptVector, DigInputService_TimerInterruptPriority, DigInputService_TimerInterruptSubPriority);
    halINTEnableInterruptVector(DigInputService_TimerInterruptVector);

    // Inicialitza el servei
    //
    DigInputService::InitParams digInputServiceInit;
    digInputServiceInit.hTimer = hDigInputTimer;
    digInputService = new DigInputService(this, digInputServiceInit);


    DigInput::InitParams digInputInit;
    digInputInit.eventParam = nullptr;

    // Inicialitza la entrada SW_SW1
    //
    digInputInit.port = SWITCHES_SW1_PORT;
    digInputInit.pin = SWITCHES_SW1_PIN;
    digInputInit.eventCallback = &sw1EventCallback;
    sw1 = new DigInput(digInputService, digInputInit);

    // Inicialitza la entrada SW_SW2
    //
#ifdef EXIST_SWITCHES_SW2
    digInputInit.port = SWITCHES_SW2_PORT;
    digInputInit.pin = SWITCHES_SW2_PIN;
    digInputInit.eventCallback = &sw2EventCallback;
    sw2 = new DigInput(digInputService, digInputInit);
#endif
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei de sortides digitals.
///
void AxisApplication::configureDigOutputService() {

    // Inicialitza els ports
    //
    halGPIOInitializePin(DigOutput_BusyLedPort, DigOutput_BusyLedPin,
        HAL_GPIO_MODE_OUTPUT_PP | HAL_GPIO_INIT_CLR, HAL_GPIO_AF_NONE);

    // Inicialitza el temporitzador
    //
	TMRInitializeInfo tmrInfo;
	tmrInfo.timer = DigOutputService_Timer;
#if defined(EOS_PIC32)
    tmrInfo.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_64;
    tmrInfo.period = ((DigOutputService_TimerClockFrequency * DigOutputService_TimerPeriod) / 64000) - 1;
#elif defined(EOS_STM32F4) || defined(EOS_STM32F7)
    tmrInfo.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_1;
    tmrInfo.prescaler = (DigOutputService_TimerClockFrequency / 1000000L) - 1;
    tmrInfo.period = (1000 * DigOutputService_TimerPeriod) - 1;
#else
    //#error CPU no soportada
#endif
	hDigOutputTimer = halTMRInitialize(&digOutputTimerData, &tmrInfo);

	// Inicialitza les interrupcions associades al temporitzador
	//
	halINTSetInterruptVectorPriority(DigOutputService_TimerInterruptVector, DigOutputService_TimerInterruptPriority, DigOutputService_TimerInterruptSubPriority);
    halINTEnableInterruptVector(DigOutputService_TimerInterruptVector);

    // Inicialitza el servei
    //
    DigOutputService::InitParams digOutputServiceInit;
    digOutputServiceInit.hTimer = hDigOutputTimer;
    digOutputService = new DigOutputService(this, digOutputServiceInit);

    DigOutput::InitParams digOutputInit;

    // Inicialitza la sortida LED_LED3
    //
    digOutputInit.port = DigOutput_BusyLedPort;
    digOutputInit.pin = DigOutput_BusyLedPin;
    led1 = new DigOutput(digOutputService, digOutputInit);
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

    tmrInit.timer = MotionService_Timer;
#if defined(EOS_PIC32)
    tmrInit.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_32;
    tmrInit.period = (MotionService_TimerClockFrequency / 32 / 100000L) - 1;
#elif defined(EOS_STM32F7)
    tmrInit.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_1;
    tmrInit.prescaler = (MotionService_TimerClockFrequency / 1000000L) - 1;
    tmrInit.period = 10 - 1;
#endif
    hMotionTimer = halTMRInitialize(&motionTimerData, &tmrInit);

	// Inicialitza les interrupcions associades al temporitzador
	//
    halINTSetInterruptVectorPriority(MotionService_TimerInterruptVector, MotionService_TimerInterruptPriority, MotionService_TimerInterruptSubPriority);
    halINTEnableInterruptVector(MotionService_TimerInterruptVector);

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
    motorCfg.stepPin = MotionService_YMotorStepPin;
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
    P2PMotion::Configuration motionCfg;
    motionCfg.numAxis = 3;
    motionCfg.motors[0] = xMotor;
    motionCfg.motors[1] = yMotor;
    motionCfg.motors[2] = zMotor;
    motionCfg.hTimer = hMotionTimer;
    motion = new P2PMotion(motionCfg);
    motion->setJerk(50000);
    motion->setMaxAcceleration(800000);
    motion->setMaxSpeed(800000);

    // Crea el servei de control de moviment
    //
    motionService = new MotionService(this, motion);
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

    if (sw1->read() == SWITCHES_STATE_ON) {
        led1->pulse(250);
        motionService->moveRel(32000, 320, 0);
    }
}


#ifdef EXIST_SWITCHES_SW2
void AxisApplication::sw2EventHandler(
    const DigInput::EventArgs& args) {

    if (sw2->read() == SWITCHES_STATE_ON) {
    	led1->pulse(250);
        motionService->moveRel(-32000, 0, 0);
    }
}
#endif


#ifdef EXIST_SWITCHES_SW3
void AxisApplication::sw3EventHandler(
    const DigInput::EventArgs& args) {

    if (sw3->read() == SWITCHES_STATE_ON) {
    	led1->pulse(250);
        motionService->stop();
    }
}
#endif
