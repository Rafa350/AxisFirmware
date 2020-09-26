#ifndef __eosConfig__
#define __eosConfig__


#define USE_LEDS_LED1
#define USE_LEDS_LED2
#define USE_LEDS_LED3

#define USE_SWITCHES_SW1
//#define USE_SWITCHES_SW2
//#define USE_SWITCHES_SW3

#define USE_ARDUINO


#include "Board/eosBoard.h"


// Configuracio global del sistema
//
#define Eos_ApplicationTickEnabled                    0
#define Eos_ApplicationTickTimer                      HAL_TMR_TIMER_5
#define Eos_UseRTOS                                   1
#define Eos_UseApplicationInitializeCallback          0
#define Eos_UseApplicationTerminateCallback           0

// Opcions de configuracio del servei DigInputs
//
#define DigInputService_Timer                         HAL_TMR_TIMER_2
#define DigInputService_TimerSourceFrequency          halSYSGetPeripheralClock1Frequency()
#define DigInputService_TimerInterruptPriority        HAL_INT_PRIORITY_LEVEL5
#define DigInputService_TimerInterruptSubPriority     HAL_INT_SUBPRIORITY_LEVEL0
#define DigInputService_TimerPeriod                   5

// Opcions de configuracio del servei DigOutputs
//
#define DigOutputService_Timer                        HAL_TMR_TIMER_3
#define DigOutputService_TimerSourceFrequency         halSYSGetPeripheralClock1Frequency()
#define DigOutputService_TimerInterruptPriority       HAL_INT_PRIORITY_LEVEL5
#define DigOutputService_TimerInterruptSubPriority    HAL_INT_SUBPRIORITY_LEVEL0
#define DigOutputService_TimerPeriod                  1

#define DigOutput_BusyLedPort                         LEDS_LED1_PORT
#define DigOutput_BusyLedPin                          LEDS_LED1_PIN


// Opcions de configuracio del servei MotionService
//
#define MotionService_XMotorStepPort             MOTORS_MOTOR1_STEP_PORT
#define MotionService_XMotorStepPin              MOTORS_MOTOR1_STEP_PIN

#define MotionService_XMotorDirectionPort        MOTORS_MOTOR1_DIRECTION_PORT
#define MotionService_XMotorDirectionPin         MOTORS_MOTOR1_DIRECTION_PIN

#define MotionService_XMotorEnablePort           MOTORS_MOTOR1_ENABLE_PORT
#define MotionService_XMotorEnablePin            MOTORS_MOTOR1_ENABLE_PIN

#define MotionService_XMotorHomePort             MOTORS_MOTOR1_HOME_PORT
#define MotionService_XMotorHomePin              MOTORS_MOTOR1_HOME_PIN

#define MotionService_XMotorLimitPort            MOTORS_MOTOR1_LIMIT_PORT
#define MotionService_XMotorLimitPin             MOTORS_MOTOR1_LIMIT_PIN

#define MotionService_YMotorStepPort             MOTORS_MOTOR2_STEP_PORT
#define MotionService_YMotorStepPin              MOTORS_MOTOR2_STEP_PIN

#define MotionService_YMotorDirectionPort        MOTORS_MOTOR2_DIRECTION_PORT
#define MotionService_YMotorDirectionPin         MOTORS_MOTOR2_DIRECTION_PIN

#define MotionService_YMotorEnablePort           MOTORS_MOTOR2_ENABLE_PORT
#define MotionService_YMotorEnablePin            MOTORS_MOTOR2_ENABLE_PIN

#define MotionService_YMotorHomePort             MOTORS_MOTOR2_HOME_PORT
#define MotionService_YMotorHomePin              MOTORS_MOTOR2_HOME_PIN

#define MotionService_YMotorLimitPort            MOTORS_MOTOR2_LIMIT_PORT
#define MotionService_YMotorLimitPin             MOTORS_MOTOR2_LIMIT_PIN

#define MotionService_ZMotorStepPort             MOTORS_MOTOR3_STEP_PORT
#define MotionService_ZMotorStepPin              MOTORS_MOTOR3_STEP_PIN

#define MotionService_ZMotorDirectionPort        MOTORS_MOTOR3_DIRECTION_PORT
#define MotionService_ZMotorDirectionPin         MOTORS_MOTOR3_DIRECTION_PIN

#define MotionService_ZMotorEnablePort           MOTORS_MOTOR3_ENABLE_PORT
#define MotionService_ZMotorEnablePin            MOTORS_MOTOR3_ENABLE_PIN

#define MotionService_ZMotorHomePort             MOTORS_MOTOR3_HOME_PORT
#define MotionService_ZMotorHomePin              MOTORS_MOTOR1_HOME_PIN

#define MotionService_ZMotorLimitPort            MOTORS_MOTOR3_LIMIT_PORT
#define MotionService_ZMotorLimitPin             MOTORS_MOTOR3_LIMIT_PIN

#define MotionService_Timer                      HAL_TMR_TIMER_4
#define MotionService_TimerSourceFrequenty       halSYSGetPeripheralClock1Frequency()
#define MotionService_TimerInterruptPriority     HAL_INT_PRIORITY_LEVEL6
#define MotionService_TimerInterruptSubPriority  HAL_INT_SUBPRIORITY_LEVEL0


#endif // __eosConfig__
