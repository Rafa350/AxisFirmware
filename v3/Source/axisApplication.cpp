#include "eos.h"
#include "HAL\halGPIO.h"
#include "axisApplication.h"
#include "axisMotionService.h"
#include "axisMotion.h"
#include "axisMotor.h"


using namespace eos;
using namespace axis;


/// ----------------------------------------------------------------------
/// \brief    Constructor del objecte.
///
AxisApplication::AxisApplication() {
    
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
    
    // Crea el servei de control de moviment
    //
    motionService = new MotionService(this, motion);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza l'aplicacio.
///
void AxisApplication::onInitialize() {
       
}
