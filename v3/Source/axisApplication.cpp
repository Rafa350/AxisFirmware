#include "eos.h"
#include "HAL\halGPIO.h"
#include "HAL\PIC32\halCN.h"
#include "Services/eosDigInputService.h"
#include "Services/eosDigOutputService.h"
#include "axisApplication.h"
#include "axisMotionService.h"
#include "axisMotion.h"
#include "axisMotor.h"


using namespace eos;
using namespace axis;


/// ----------------------------------------------------------------------
/// \brief    Constructor del objecte.
///
AxisApplication::AxisApplication():
    sw1EventCallback(this, &AxisApplication::sw1EventHandler) {
    
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei d'entrades digitals.
///
void AxisApplication::initializeDigInputService() {
    
    // Inicialitza el servei
    //
    DigInputService::InitParams digInputServiceInit;
    digInputServiceInit.timer = AXIS_INPUTS_TIMER;
    digInputServiceInit.period = 5;
    digInputService = new DigInputService(this, digInputServiceInit);
    
    DigInput::InitParams digInputInit;
    digInputInit.eventParam = nullptr;
    
    // Inicialitza la entrada SW_SW1
    //
    halGPIOInitializePin(SW_SW1_PORT, SW_SW1_PIN, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
    halCNInitializeLine(SW_SW1_CN, HAL_CN_PULL_UP);
    digInputInit.port = SW_SW1_PORT;
    digInputInit.pin = SW_SW1_PIN;
    digInputInit.eventCallback = &sw1EventCallback;
    sw1 = new DigInput(digInputService, digInputInit);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei de sortides digitals.
///
void AxisApplication::initializeDigOutputService() {
    
    // Inicialitza el servei
    //
    DigOutputService::InitParams digOutputServiceInit;
    digOutputServiceInit.timer = AXIS_OUTPUTS_TIMER;
    digOutputServiceInit.period = 1;
    digOutputService = new DigOutputService(this, digOutputServiceInit);
    
    DigOutput::InitParams digOutputInit;

    // Inicialitza la sortida LED_LED1
    //
    halGPIOInitializePin(LED_LED3_PORT, LED_LED3_PIN, HAL_GPIO_MODE_OUTPUT_PP | HAL_GPIO_INIT_CLR, HAL_GPIO_AF_NONE);
    digOutputInit.port = LED_LED3_PORT;
    digOutputInit.pin = LED_LED3_PIN;
    led3 = new DigOutput(digOutputService, digOutputInit);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el servei de conmtrol de moviment.
///
void AxisApplication::initializeMotionService() {
    
    Motor::Configuration motorCfg;
    
    // Crea el motor del eix X
    //
    motorCfg.stepPort = AXIS_MOTOR_X_STEP_PORT;
    motorCfg.stepPin = AXIS_MOTOR_X_STEP_PIN;
    motorCfg.directionPort = AXIS_MOTOR_X_DIRECTION_PORT;
    motorCfg.directionPin = AXIS_MOTOR_X_DIRECTION_PIN;
    motorCfg.enablePort = AXIS_MOTOR_X_ENABLE_PORT;
    motorCfg.enablePin = AXIS_MOTOR_X_ENABLE_PIN;

    xMotor = new Motor(motorCfg);

    // Crea el motor del eix Y
    //
    motorCfg.stepPort = AXIS_MOTOR_Y_STEP_PORT;
    motorCfg.stepPin = AXIS_MOTOR_Y_STEP_PIN;
    motorCfg.directionPort = AXIS_MOTOR_Y_DIRECTION_PORT;
    motorCfg.directionPin = AXIS_MOTOR_Y_DIRECTION_PIN;
    motorCfg.enablePort = AXIS_MOTOR_Y_ENABLE_PORT;
    motorCfg.enablePin = AXIS_MOTOR_Y_ENABLE_PIN;
    yMotor = new Motor(motorCfg);

    // Crea el motor del eix Z
    //    
    motorCfg.stepPort = AXIS_MOTOR_Z_STEP_PORT;
    motorCfg.stepPin = AXIS_MOTOR_Z_STEP_PIN;
    motorCfg.directionPort = AXIS_MOTOR_Z_DIRECTION_PORT;
    motorCfg.directionPin = AXIS_MOTOR_Z_DIRECTION_PIN;
    motorCfg.enablePort = AXIS_MOTOR_Z_ENABLE_PORT;
    motorCfg.enablePin = AXIS_MOTOR_Z_ENABLE_PIN;
    zMotor = new Motor(motorCfg);

    // Crea el controlador de moviment
    //
    Motion::Configuration motionCfg;
    motionCfg.numAxis = 3;
    motionCfg.motors[0] = xMotor;
    motionCfg.motors[1] = yMotor;
    motionCfg.motors[2] = zMotor;
    motionCfg.timer = AXIS_MOTION_TIMER;
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
       
    initializeMotionService();
    //fsmService = new FsmService(this, nullptr);
    initializeDigInputService();
    initializeDigOutputService();
}


void AxisApplication::sw1EventHandler(
    const DigInput::EventArgs& args) {
    
    if (!sw1->read())
        led3->toggle();
    
    motion->setHome();
    motion->doMoveRel(0, 3200);
}