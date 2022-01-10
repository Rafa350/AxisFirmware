#include "eos.h"
#include "HAL\halGPIO.h"
#include "HAL\halINT.h"
#include "HAL\halSYS.h"
#include "HAL\halTMR.h"
#include "HAL\halUART.h"
#ifdef EOS_PIC32
#include "HAL\PIC32\halCN.h"
#endif
#include "Services/eosDigInputService.h"
#include "Services/eosDigOutputService.h"
#include "Services/eosUARTService.h"
#include "axisConfig.h"
#include "axisApplication.h"
#include "axisMotionService.h"
#include "axisP2PMotion.h"
#include "axisMotor.h"


using namespace eos;
using namespace axis;


static halTMRData digInputTimerData;      // Dades del temporitzador pel servei DigInput
static halTMRData digOutputTimerData;     // Dades del temporitzador pel servei DigOutput
static halTMRData motionTimerData;        // Dades del temporitzador pel control de moviment
static halUARTData uartData;              // Dades del modul UART

halTMRHandler hDigInputTimer = nullptr;   // Handler del temporitzador
halTMRHandler hDigOutputTimer = nullptr;  // Handler del temporitzador
halTMRHandler hMotionTimer = nullptr;     // Handler del temporitzador
halUARTHandler hUART = nullptr;           // Handler de la UART


/// ----------------------------------------------------------------------
/// \brief    Constructor del objecte.
///
AxisApplication::AxisApplication():
    sw1EventCallback(this, &AxisApplication::sw1EventHandler),
#ifdef EXIST_SWITCHES_SW2
    sw2EventCallback(this, &AxisApplication::sw2EventHandler),
#endif
#ifdef EXIST_SWITCHES_SW3
    sw3EventCallback(this, &AxisApplication::sw3EventHandler),
#endif
	motionServiceEventCallback(this, &AxisApplication::motionServiceEventHandler)
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
	halTMRSettings tmrSettings;
	tmrSettings.timer = DigInputService_Timer;
#if defined(EOS_PIC32)
    tmrSettings.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_64;
    tmrSettings.period = ((DigInputService_TimerClockFrequency * DigInputService_TimerPeriod) / 64000) - 1;
#elif defined(EOS_STM32F4) || defined(EOS_STM32F7)
    tmrSettings.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_1;
    tmrSettings.prescaler = (DigInputService_TimerClockFrequency / 1000000L) - 1;
    tmrSettings.period = (1000 * DigInputService_TimerPeriod) - 1;
#else
    //#error CPU no soportada
#endif
	hDigInputTimer = halTMRInitialize(&digInputTimerData, &tmrSettings);

	// Inicialitza les interrupcions associades al temporitzador
	//
    halINTSetInterruptVectorPriority(DigInputService_TimerInterruptVector, DigInputService_TimerInterruptPriority, DigInputService_TimerInterruptSubPriority);
    halINTEnableInterruptVector(DigInputService_TimerInterruptVector);

    // Inicialitza el servei
    //
    DigInputService::Settings digInputServiceSettings;
    digInputServiceSettings.hTimer = hDigInputTimer;
    digInputService = new DigInputService(this, digInputServiceSettings);

    DigInput::Settings digInputSettings;
    digInputSettings.eventParam = nullptr;

    // Inicialitza la entrada SW_SW1
    //
    digInputSettings.port = SWITCHES_SW1_PORT;
    digInputSettings.pin = SWITCHES_SW1_PIN;
    digInputSettings.eventCallback = &sw1EventCallback;
    sw1 = new DigInput(digInputService, digInputSettings);

    // Inicialitza la entrada SW_SW2
    //
#ifdef EXIST_SWITCHES_SW2
    digInputSettings.port = SWITCHES_SW2_PORT;
    digInputSettings.pin = SWITCHES_SW2_PIN;
    digInputSettings.eventCallback = &sw2EventCallback;
    sw2 = new DigInput(digInputService, digInputSettings);
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
	halTMRSettings tmrSettings;
	tmrSettings.timer = DigOutputService_Timer;
#if defined(EOS_PIC32)
    tmrSettings.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_64;
    tmrSettings.period = ((DigOutputService_TimerClockFrequency * DigOutputService_TimerPeriod) / 64000) - 1;
#elif defined(EOS_STM32F4) || defined(EOS_STM32F7)
    tmrSettings.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_1;
    tmrSettings.prescaler = (DigOutputService_TimerClockFrequency / 1000000L) - 1;
    tmrSettings.period = (1000 * DigOutputService_TimerPeriod) - 1;
#else
    //#error CPU no soportada
#endif
	hDigOutputTimer = halTMRInitialize(&digOutputTimerData, &tmrSettings);

	// Inicialitza les interrupcions associades al temporitzador
	//
	halINTSetInterruptVectorPriority(DigOutputService_TimerInterruptVector, DigOutputService_TimerInterruptPriority, DigOutputService_TimerInterruptSubPriority);
    halINTEnableInterruptVector(DigOutputService_TimerInterruptVector);

    // Inicialitza el servei
    //
    DigOutputService::Settings digOutputServiceSettings;
    digOutputServiceSettings.hTimer = hDigOutputTimer;
    digOutputService = new DigOutputService(this, digOutputServiceSettings);

    DigOutput::Settings digOutputSettings;

    // Inicialitza la sortida LED1
    //
    digOutputSettings.port = DigOutput_BusyLedPort;
    digOutputSettings.pin = DigOutput_BusyLedPin;
    led1 = new DigOutput(digOutputService, digOutputSettings);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei de control de moviment.
///
void AxisApplication::configureMotionService() {

    // Inicialitza els ports
    //
    halGPIOPinSettings gpioSettings;

    gpioSettings.options = HAL_GPIO_MODE_OUTPUT_PP | HAL_GPIO_INIT_CLR;
    gpioSettings.alt = HAL_GPIO_AF_NONE;

    gpioSettings.port = MotionService_XMotorStepPort;
    gpioSettings.pin = MotionService_XMotorStepPin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_XMotorDirectionPort;
    gpioSettings.pin = MotionService_XMotorDirectionPin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_YMotorStepPort;
    gpioSettings.pin = MotionService_YMotorStepPin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_YMotorDirectionPort;
    gpioSettings.pin = MotionService_YMotorDirectionPin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_ZMotorStepPort;
    gpioSettings.pin = MotionService_ZMotorStepPin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_ZMotorDirectionPort;
    gpioSettings.pin = MotionService_ZMotorDirectionPin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.options = HAL_GPIO_MODE_INPUT | HAL_GPIO_PULL_UP;

    gpioSettings.port = MotionService_XMotorHomePort;
    gpioSettings.pin = MotionService_XMotorHomePin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_XMotorLimitPort;
    gpioSettings.pin = MotionService_XMotorLimitPin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_YMotorHomePort;
    gpioSettings.pin = MotionService_YMotorHomePin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_YMotorLimitPort;
    gpioSettings.pin = MotionService_YMotorLimitPin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_ZMotorHomePort;
    gpioSettings.pin = MotionService_ZMotorHomePin;
    halGPIOInitializePins(&gpioSettings, 1);

    gpioSettings.port = MotionService_ZMotorLimitPort;
    gpioSettings.pin = MotionService_ZMotorLimitPin;
    halGPIOInitializePins(&gpioSettings, 1);

    // Inicialitza el temporitzador
    //
    halTMRSettings tmrSettings;

    tmrSettings.timer = MotionService_Timer;
#if defined(EOS_PIC32)
    tmrSettings.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_32;
    tmrSettings.period = (MotionService_TimerClockFrequency / 32 / 100000L) - 1;
#elif defined(EOS_STM32F7)
    tmrSettings.options = HAL_TMR_MODE_16 | HAL_TMR_CLKDIV_1;
    tmrSettings.prescaler = (MotionService_TimerClockFrequency / 1000000L) - 1;
    tmrSettings.period = 10 - 1;
#endif
    hMotionTimer = halTMRInitialize(&motionTimerData, &tmrSettings);

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
    motorCfg.homePort = MotionService_XMotorHomePort;
    motorCfg.homePin = MotionService_XMotorHomePin;
    motorCfg.limitPort = MotionService_XMotorLimitPort;
    motorCfg.limitPin = MotionService_XMotorLimitPin;
    motorCfg.maxAcceleration = Axis_X_MaxAcceleration;
    motorCfg.maxSpeed = Axis_X_MaxSpeed;
    motorCfg.stepsByRev = Axis_X_StepsByRev;
    xMotor = new Motor(motorCfg);

    // Crea el motor del eix Y
    //
    motorCfg.stepPort = MotionService_YMotorStepPort;
    motorCfg.stepPin = MotionService_YMotorStepPin;
    motorCfg.directionPort = MotionService_YMotorDirectionPort;
    motorCfg.directionPin = MotionService_YMotorDirectionPin;
    motorCfg.enablePort = MotionService_YMotorEnablePort;
    motorCfg.enablePin = MotionService_YMotorEnablePin;
    motorCfg.homePort = MotionService_YMotorHomePort;
    motorCfg.homePin = MotionService_YMotorHomePin;
    motorCfg.limitPort = MotionService_YMotorLimitPort;
    motorCfg.limitPin = MotionService_YMotorLimitPin;
    motorCfg.maxAcceleration = Axis_Y_MaxAcceleration;
    motorCfg.maxSpeed = Axis_Y_MaxSpeed;
    motorCfg.stepsByRev = Axis_Y_StepsByRev;
    yMotor = new Motor(motorCfg);

    // Crea el motor del eix Z
    //
    motorCfg.stepPort = MotionService_ZMotorStepPort;
    motorCfg.stepPin = MotionService_ZMotorStepPin;
    motorCfg.directionPort = MotionService_ZMotorDirectionPort;
    motorCfg.directionPin = MotionService_ZMotorDirectionPin;
    motorCfg.enablePort = MotionService_ZMotorEnablePort;
    motorCfg.enablePin = MotionService_ZMotorEnablePin;
    motorCfg.homePort = MotionService_ZMotorHomePort;
    motorCfg.homePin = MotionService_ZMotorHomePin;
    motorCfg.limitPort = MotionService_ZMotorLimitPort;
    motorCfg.limitPin = MotionService_ZMotorLimitPin;
    motorCfg.stepsByRev = Axis_Z_StepsByRev;
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

    //motion->setJerk(500000);
    //motion->setMaxAcceleration(800000);
    //motion->setMaxSpeed(800000);

    // Crea el servei de control de moviment
    //
    MotionService::InitializeInfo motionServiceInfo;
    motionServiceInfo.motion = motion;
    motionServiceInfo.eventCallback = &motionServiceEventCallback;
    motionServiceInfo.eventParam = nullptr;
    motionService = new MotionService(this, motionServiceInfo);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei de comunicacio UART
///
void AxisApplication::configuraUARTService() {

	// Configura els pins (Corresponen al pins del conector Arduino D0/D1)
	//
    halGPIOPinSettings gpioSettings;

    gpioSettings.options = HAL_GPIO_MODE_ALT_PP | HAL_GPIO_SPEED_HIGH | HAL_GPIO_PULL_UP;

	gpioSettings.port = UARTService_TxPort;
	gpioSettings.pin = UARTService_TxPin;
	gpioSettings.alt = UARTService_TxAF;
	halGPIOInitializePins(&gpioSettings, 1);

	gpioSettings.port = UARTService_RxPort;
	gpioSettings.pin = UARTService_RxPin;
	gpioSettings.alt = UARTService_RxAF;
	halGPIOInitializePins(&gpioSettings, 1);


	// Inicialitza el modul UART
	//
	halUARTSettings uartSettings;
	uartSettings.channel = UARTService_UARTChannel;
	uartSettings.options =
		HAL_UART_CLOCK_AUTO | HAL_UART_BAUD_9600 | HAL_UART_OVERSAMPLING_16 |
		HAL_UART_LEN_8 | HAL_UART_STOP_1 | HAL_UART_PARITY_NONE;
	hUART = halUARTInitialize(&uartData, &uartSettings);
	halINTEnableInterruptVector(UARTService_UARTInterruptVector);
	halINTSetInterruptVectorPriority(UARTService_UARTInterruptVector, UARTService_UARTInterruptPriority, UARTService_UARTInterruptSubPriority);

	// Inicialitza el servei.
	//
	UARTService::Settings uartServiceSettings;
	uartServiceSettings.hUART = hUART;
	hUARTService = new UARTService(this, uartServiceSettings);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza l'aplicacio.
///
void AxisApplication::onInitialize() {

    configureMotionService();
    //fsmService = new FsmService(this, nullptr);
    configureDigInputService();
    configureDigOutputService();
    configuraUARTService();
}


/// ----------------------------------------------------------------------
/// \brief    Procesa els events del servei de control de movioment.
/// \param    args: Arguments del event.
///
void AxisApplication::motionServiceEventHandler(
	const MotionService::EventArgs& args) {

}


void AxisApplication::sw1EventHandler(
    const DigInput::EventArgs& args) {

	static int sign = 1;
	static int dist1 = 4 * 3200;
	static int dist2 = 2 * 3200;

    if (sw1->read() == SWITCHES_STATE_ON) {
        led1->pulse(250);

        motion->doHoming();
        //motionService->moveRel(sign * dist1, dist2 * sign, 0);
        //sign *= -1;
    }
}


#ifdef EXIST_SWITCHES_SW2
void AxisApplication::sw2EventHandler(
    const DigInput::EventArgs& args) {

    if (sw2->read() == SWITCHES_STATE_ON) {
    	led1->pulse(250);
        motionService->moveRel(-3200, 0, 0);
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
