#ifndef __appBoard_STM32F746G_DISCO__
#define __appBoard_STM32F746G_DISCO__


#define AXIS_INPUTS_TIMER              HAL_TMR_TIMER_2
#define AXIS_OUTPUTS_TIMER             HAL_TMR_TIMER_3

// Opcions de configuracio del eix X
//
#define AXIS_MOTOR_X_STEP_PORT         HAL_GPIO_PORT_I     // CN7-1
#define AXIS_MOTOR_X_STEP_PIN          HAL_GPIO_PIN_2

#define AXIS_MOTOR_X_DIRECTION_PORT    HAL_GPIO_PORT_A     // CN7-2
#define AXIS_MOTOR_X_DIRECTION_PIN     HAL_GPIO_PIN_15

#define AXIS_MOTOR_X_ENABLE_PORT       0xFF
#define AXIS_MOTOR_X_ENABLE_PIN        0xFF

#define AXIS_MOTOR_X_HOME_PORT         HAL_GPIO_PORT_C     // CN4-1
#define AXIS_MOTOR_X_HOME_PIN          HAL_GPIO_PIN_7

#define AXIS_MOTOR_X_LIMIT_PORT        HAL_GPIO_PORT_C     // CN4-2
#define AXIS_MOTOR_X_LIMIT_PIN         HAL_GPIO_PIN_6

// Opcions de configuracio del eix Y
//
#define AXIS_MOTOR_Y_STEP_PORT         HAL_GPIO_PORT_A     // CN7-3
#define AXIS_MOTOR_Y_STEP_PIN          HAL_GPIO_PIN_8

#define AXIS_MOTOR_Y_DIRECTION_PORT    HAL_GPIO_PORT_B     // CN7-4
#define AXIS_MOTOR_Y_DIRECTION_PIN     HAL_GPIO_PIN_15

#define AXIS_MOTOR_Y_ENABLE_PORT       0xFF
#define AXIS_MOTOR_Y_ENABLE_PIN        0xFF

#define AXIS_MOTOR_Y_HOME_PORT         HAL_GPIO_PORT_G     // CN4-3
#define AXIS_MOTOR_Y_HOME_PIN          HAL_GPIO_PIN_6

#define AXIS_MOTOR_Y_LIMIT_PORT        HAL_GPIO_PORT_B     // CN4-4
#define AXIS_MOTOR_Y_LIMIT_PIN         HAL_GPIO_PIN_4

// Opcions de configuracio del eix Z
//
#define AXIS_MOTOR_Z_STEP_PORT         HAL_GPIO_PORT_B     // CN7-5
#define AXIS_MOTOR_Z_STEP_PIN          HAL_GPIO_PIN_14

#define AXIS_MOTOR_Z_DIRECTION_PORT    HAL_GPIO_PORT_I     // CN7-6
#define AXIS_MOTOR_Z_DIRECTION_PIN     HAL_GPIO_PIN_1

#define AXIS_MOTOR_Z_ENABLE_PORT       0xFF
#define AXIS_MOTOR_Z_ENABLE_PIN        0xFF

#define AXIS_MOTOR_Z_HOME_PORT         HAL_GPIO_PORT_G     // CN4-5
#define AXIS_MOTOR_Z_HOME_PIN          HAL_GPIO_PIN_7

#define AXIS_MOTOR_Z_LIMIT_PORT        HAL_GPIO_PORT_I     // CN4-6
#define AXIS_MOTOR_Z_LIMIT_PIN         HAL_GPIO_PIN_0

// Opcions de configuracio del timer
//
#define AXIS_MOTION_TIMER                        HAL_TMR_TIMER_4
#define AXIS_MOTION_TIMER_INT_PRIORITY_LEVEL     HAL_INT_PRIORITY_LEVEL5
#define AXIS_MOTION_TIMER_INT_SUBPRIORITY_LEVEL  HAL_INT_SUBPRIORITY_LEVEL0


#endif // __appBoard_STM32F746G_DISCO__
