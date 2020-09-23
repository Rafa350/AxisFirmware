#ifndef __eosConfig__
#define __eosConfig__


#define USE_LEDS_LED1
#define USE_LEDS_LED2
#define USE_LEDS_LED3

#define USE_SWITCHES_SW1
#define USE_SWITCHES_SW2
#define USE_SWITCHES_SW3


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
#define DigInputService_TimerInterruptPriority        HAL_INT_PRIORITY_LEVEL2
#define DigInputService_TimerInterruptSubPriority     HAL_INT_SUBPRIORITY_LEVEL2
#define DigInputService_TimerPeriod                   5

// Opcions de configuracio del servei DigOutputs
//
#define DigOutputService_Timer                        HAL_TMR_TIMER_3
#define DigOutputService_TimerInterruptPriority       HAL_INT_PRIORITY_LEVEL2
#define DigOutputService_TimerInterruptSubPriority    HAL_INT_SUBPRIORITY_LEVEL2
#define DigOutputService_TimerPeriod                  1


// Opcions de configuracio del servei MotionService
//
#define MotionService_XMotorStepPort             LED_LED1_PORT    // HAL_GPIO_PORT_D   
#define MotionService_XMotorStepPin              LED_LED1_PIN     // HAL_GPIO_PIN_3   

#define MotionService_XMotorDirectionPort        LED_LED2_PORT    // HAL_GPIO_PORT_D    
#define MotionService_XMotorDirectionPin         LED_LED2_PIN     // HAL_GPIO_PIN_4

#define MotionService_XMotorEnablePort           MOTORS_MOTOR1_ENABLE_PORT
#define MotionService_XMotorEnablePin            MOTORS_MOTOR1_ENABLE_PIN

#define MotionService_XMotorHomePort             
#define MotionService_XMotorHomePin              

#define MotionService_XMotorLimitPort            
#define MotionService_XMotorLimitPin             

#define MotionService_YMotorStepPort             MOTORS_MOTOR2_STEP_PORT
#define MotionService_YMotorStepPin              MOTORS_MOTOR2_STEP_PIN

#define MotionService_YMotorDirectionPort        MOTORS_MOTOR2_DIRECTION_PORT
#define MotionService_YMotorDirectionPin         MOTORS_MOTOR2_DIRECTION_PIN

#define MotionService_YMotorEnablePort           MOTORS_MOTOR2_ENABLE_PORT
#define MotionService_YMotorEnablePin            MOTORS_MOTOR2_ENABLE_PIN

#define MotionService_YMotorHomePort             
#define MotionService_XMotorHomePin              

#define MotionService_YMotorLimitPort            
#define MotionService_YMotorLimitPin            

#define MotionService_ZMotorStepPort             MOTORS_MOTOR3_STEP_PORT
#define MotionService_ZMotorStepPin              MOTORS_MOTOR3_STEP_PIN

#define MotionService_ZMotorDirectionPort        MOTORS_MOTOR3_DIRECTION_PORT
#define MotionService_ZMotorDirectionPin         MOTORS_MOTOR3_DIRECTION_PIN

#define MotionService_ZMotorEnablePort           MOTORS_MOTOR3_ENABLE_PORT
#define MotionService_ZMotorEnablePin            MOTORS_MOTOR3_ENABLE_PIN

#define MotionService_ZMotorHomePort            
#define MotionService_ZMotorHomePin          

#define MotionService_ZMotorLimitPort        
#define MotionService_ZMotorLimitPin          

#define MotionService_Timer                      HAL_TMR_TIMER_4
#define MotionService_TimerInterruptPriority     HAL_INT_PRIORITY_LEVEL5    
#define MotionService_TimerInterruptSubPriority  HAL_INT_SUBPRIORITY_LEVEL0


#endif // __eosConfig__
