#ifndef __appBoard_PIC32_USB_STARTER_KIT_I__
#define __appBoard_PIC32_USB_STARTER_KIT_I__


// Conexions a la placa d'expanssio.
//
// Senyal     Senyal PIC32          Pin
// ---------  --------------------  -------
// X-STEP     OC4/RD3               J11-18
// X-DIR      PMPWR/OC5/C13/RD4     J10-14
// X-HOME
// X-LIMIT
//
// Y-STEP     PMPRD/RD5             J11-13
// Y-DIR      IC1/RTCC/RD8          J11-25
// Y-HOME
// Y-LIMIT
//
// Z-STEP     SS1/IC2/RD9           J11-26
// Z-DIR      SCK1/IC3/PMPCS2/RD10  J10-16
// Z-HOME
// Z-LIMIT
//
// 5V0        +5.0                  J10-28 
// 3V3        +3.3                  J10-27
// GND        GND                   J10-45
//


#define AXIS_INPUTS_TIMER              HAL_TMR_TIMER_2
#define AXIS_OUTPUTS_TIMER             HAL_TMR_TIMER_3

// Opcions de configuracio del eix X
//
#define AXIS_MOTOR_X_STEP_PORT         HAL_GPIO_PORT_D   
#define AXIS_MOTOR_X_STEP_PIN          HAL_GPIO_PIN_3   

#define AXIS_MOTOR_X_DIRECTION_PORT    HAL_GPIO_PORT_D    
#define AXIS_MOTOR_X_DIRECTION_PIN     HAL_GPIO_PIN_4

#define AXIS_MOTOR_X_ENABLE_PORT       0xFF
#define AXIS_MOTOR_X_ENABLE_PIN        0xFF

#define AXIS_MOTOR_X_HOME_PORT         HAL_GPIO_PORT_
#define AXIS_MOTOR_X_HOME_PIN          HAL_GPIO_PIN_

#define AXIS_MOTOR_X_LIMIT_PORT        HAL_GPIO_PORT_
#define AXIS_MOTOR_X_LIMIT_PIN         HAL_GPIO_PIN_

// Opcions de configuracio del eix Y
//
#define AXIS_MOTOR_Y_STEP_PORT         HAL_GPIO_PORT_D
#define AXIS_MOTOR_Y_STEP_PIN          HAL_GPIO_PIN_5

#define AXIS_MOTOR_Y_DIRECTION_PORT    HAL_GPIO_PORT_D
#define AXIS_MOTOR_Y_DIRECTION_PIN     HAL_GPIO_PIN_8

#define AXIS_MOTOR_Y_ENABLE_PORT       0xFF
#define AXIS_MOTOR_Y_ENABLE_PIN        0xFF

#define AXIS_MOTOR_Y_HOME_PORT         HAL_GPIO_PORT_
#define AXIS_MOTOR_Y_HOME_PIN          HAL_GPIO_PIN_

#define AXIS_MOTOR_Y_LIMIT_PORT        HAL_GPIO_PORT_
#define AXIS_MOTOR_Y_LIMIT_PIN         HAL_GPIO_PIN_

// Opcions de configuracio del eix Z
//
#define AXIS_MOTOR_Z_STEP_PORT         HAL_GPIO_PORT_D
#define AXIS_MOTOR_Z_STEP_PIN          HAL_GPIO_PIN_9

#define AXIS_MOTOR_Z_DIRECTION_PORT    HAL_GPIO_PORT_D
#define AXIS_MOTOR_Z_DIRECTION_PIN     HAL_GPIO_PIN_10

#define AXIS_MOTOR_Z_ENABLE_PORT       0xFF
#define AXIS_MOTOR_Z_ENABLE_PIN        0xFF

#define AXIS_MOTOR_Z_HOME_PORT         HAL_GPIO_PORT_
#define AXIS_MOTOR_Z_HOME_PIN          HAL_GPIO_PIN_

#define AXIS_MOTOR_Z_LIMIT_PORT        HAL_GPIO_PORT_
#define AXIS_MOTOR_Z_LIMIT_PIN         HAL_GPIO_PIN_

// Opcions de configuracio del timer
//
#define AXIS_MOTION_TIMER                        HAL_TMR_TIMER_4
#define AXIS_MOTION_TIMER_INT_PRIORITY_LEVEL     HAL_INT_PRIORITY_LEVEL2    
#define AXIS_MOTION_TIMER_INT_SUBPRIORITY_LEVEL  HAL_INT_SUBPRIORITY_LEVEL0


#endif // __appBoard_PIC32_USB_STARTER_KIT_I__
