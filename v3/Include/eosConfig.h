#ifndef __eosConfig__
#define __eosConfig__


#define USE_LEDS_LED1
#define USE_LEDS_LED2
#if defined(HARDWARE_PIC32_USB_STARTER_KIT_I) || \
    defined(HARDWARE_PIC32_ETH_STARTER_KIT)
	#define USE_LEDS_LED3
#endif

#define USE_SWITCHES_SW1
#if defined(HARDWARE_PIC32_USB_STARTER_KIT_I) || \
    defined(HARDWARE_PIC32_ETH_STARTER_KIT)
#define USE_SWITCHES_SW2
#endif
#if defined(HARDWARE_PIC32_USB_STARTER_KIT_I) || \
    defined(HARDWARE_PIC32_ETH_STARTER_KIT)
#define USE_SWITCHES_SW3
#endif

#define AXIS_INPUTS_TIMER              HAL_TMR_TIMER_2
#define AXIS_OUTPUTS_TIMER             HAL_TMR_TIMER_3

// Opcions de configuracio del eix X
//
#define AXIS_MOTOR_X_STEP_PORT         HAL_GPIO_PORT_D   
#define AXIS_MOTOR_X_STEP_PIN          HAL_GPIO_PIN_0   

#define AXIS_MOTOR_X_DIRECTION_PORT    HAL_GPIO_PORT_D    
#define AXIS_MOTOR_X_DIRECTION_PIN     HAL_GPIO_PIN_1

#define AXIS_MOTOR_X_ENABLE_PORT       0xFF
#define AXIS_MOTOR_X_ENABLE_PIN        0xFF

#define AXIS_MOTOR_X_HOME_PORT         HAL_GPIO_PORT_
#define AXIS_MOTOR_X_HOME_PIN          HAL_GPIO_PIN_

#define AXIS_MOTOR_X_LIMIT_PORT        HAL_GPIO_PORT_
#define AXIS_MOTOR_X_LIMIT_PIN         HAL_GPIO_PIN_

// Opcions de configuracio del eix Y
//
#define AXIS_MOTOR_Y_STEP_PORT         HAL_GPIO_PORT_D
#define AXIS_MOTOR_Y_STEP_PIN          HAL_GPIO_PIN_0

#define AXIS_MOTOR_Y_DIRECTION_PORT    HAL_GPIO_PORT_D
#define AXIS_MOTOR_Y_DIRECTION_PIN     HAL_GPIO_PIN_1

#define AXIS_MOTOR_Y_ENABLE_PORT       0xFF
#define AXIS_MOTOR_Y_ENABLE_PIN        0xFF

#define AXIS_MOTOR_Y_HOME_PORT         HAL_GPIO_PORT_
#define AXIS_MOTOR_Y_HOME_PIN          HAL_GPIO_PIN_

#define AXIS_MOTOR_Y_LIMIT_PORT        HAL_GPIO_PORT_
#define AXIS_MOTOR_Y_LIMIT_PIN         HAL_GPIO_PIN_

// Opcions de configuracio del eix Z
//
#define AXIS_MOTOR_Z_STEP_PORT         HAL_GPIO_PORT_D
#define AXIS_MOTOR_Z_STEP_PIN          HAL_GPIO_PIN_0

#define AXIS_MOTOR_Z_DIRECTION_PORT    HAL_GPIO_PORT_D
#define AXIS_MOTOR_Z_DIRECTION_PIN     HAL_GPIO_PIN_1

#define AXIS_MOTOR_Z_ENABLE_PORT       0xFF
#define AXIS_MOTOR_Z_ENABLE_PIN        0xFF

#define AXIS_MOTOR_Z_HOME_PORT         HAL_GPIO_PORT_
#define AXIS_MOTOR_Z_HOME_PIN          HAL_GPIO_PIN_

#define AXIS_MOTOR_Z_LIMIT_PORT        HAL_GPIO_PORT_
#define AXIS_MOTOR_Z_LIMIT_PIN         HAL_GPIO_PIN_

// Opcions de configuracio del timer
//
#define AXIS_MOTION_TIMER              HAL_TMR_TIMER_4


#include "Board/eosBoard.h"


#endif // __eosConfig__
