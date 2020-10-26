#ifndef __appBoard_STM32F746G_DISCO__
#define __appBoard_STM32F746G_DISCO__


#include "Board/eosBoard_STM32F746G_DISCO.h"


// -----------------------------------------------------------------------
// LEDS
//
#ifdef USE_LEDS_LED2
#define EXIST_LEDS_LED2

#define LEDS_LED2_PORT            ARDUINO_D14_PORT
#define LEDS_LED2_PIN             ARDUINO_D14_PIN

#endif

#ifdef USE_LEDS_LED3
#define EXIST_LEDS_LED3

#define LEDS_LED3_PORT            ARDUINO_D15_PORT
#define LEDS_LED3_PIN             ARDUINO_D15_PIN

#endif


// -----------------------------------------------------------------------
// SWITCHES
//
#ifdef USE_SWITCHES_SW2
#define EXIST_SWITCHES_SW2

#define SWITCHES_SW2_PORT
#define SWITCHES_SW2_PIN

#endif


// -----------------------------------------------------------------------
// MOTORS
//
#define EXIST_MOTORS_MOTOR1

#define MOTORS_MOTOR1_STEP_PORT        ARDUINO_D2_PORT
#define MOTORS_MOTOR1_STEP_PIN         ARDUINO_D2_PIN

#define MOTORS_MOTOR1_DIRECTION_PORT   ARDUINO_D3_PORT
#define MOTORS_MOTOR1_DIRECTION_PIN    ARDUINO_D3_PIN

#define MOTORS_MOTOR1_ENABLE_PORT      HAL_GPIO_PORT_NONE
#define MOTORS_MOTOR1_ENABLE_PIN       HAL_GPIO_PIN_NONE

#define MOTORS_MOTOR1_HOME_PORT        ARDUINO_D8_PORT
#define MOTORS_MOTOR1_HOME_PIN         ARDUINO_D8_PIN

#define MOTORS_MOTOR1_LIMIT_PORT       ARDUINO_D9_PORT
#define MOTORS_MOTOR1_LIMIT_PIN        ARDUINO_D9_PIN

#define EXIST_MOTORS_MOTOR2

#define MOTORS_MOTOR2_STEP_PORT        ARDUINO_D4_PORT
#define MOTORS_MOTOR2_STEP_PIN         ARDUINO_D4_PIN

#define MOTORS_MOTOR2_DIRECTION_PORT   ARDUINO_D5_PORT
#define MOTORS_MOTOR2_DIRECTION_PIN    ARDUINO_D5_PIN

#define MOTORS_MOTOR2_ENABLE_PORT      HAL_GPIO_PORT_NONE
#define MOTORS_MOTOR2_ENABLE_PIN       HAL_GPIO_PIN_NONE

#define MOTORS_MOTOR2_HOME_PORT        ARDUINO_D10_PORT
#define MOTORS_MOTOR2_HOME_PIN         ARDUINO_D10_PIN

#define MOTORS_MOTOR2_LIMIT_PORT       ARDUINO_D11_PORT
#define MOTORS_MOTOR2_LIMIT_PIN        ARDUINO_D11_PIN

#define EXIST_MOTORS_MOTOR3

#define MOTORS_MOTOR3_STEP_PORT        ARDUINO_D6_PORT
#define MOTORS_MOTOR3_STEP_PIN         ARDUINO_D6_PIN

#define MOTORS_MOTOR3_DIRECTION_PORT   ARDUINO_D7_PORT
#define MOTORS_MOTOR3_DIRECTION_PIN    ARDUINO_D7_PIN

#define MOTORS_MOTOR3_ENABLE_PORT      HAL_GPIO_PORT_NONE
#define MOTORS_MOTOR3_ENABLE_PIN       HAL_GPIO_PIN_NONE

#define MOTORS_MOTOR3_HOME_PORT        ARDUINO_D12_PORT
#define MOTORS_MOTOR3_HOME_PIN         ARDUINO_D12_PIN

#define MOTORS_MOTOR3_LIMIT_PORT       ARDUINO_D13_PORT
#define MOTORS_MOTOR3_LIMIT_PIN        ARDUINO_D13_PIN

// -----------------------------------------------------------------------
// UART
//
#define UART_TX_PORT                   ARDUINO_D1_PORT
#define UART_TX_PIN					   ARDUINO_D1_PIN
#define UART_TX_AF                     HAL_GPIO_AF8_USART6

#define UART_RX_PORT                   ARDUINO_D0_PORT
#define UART_RX_PIN                    ARDUINO_D0_PIN
#define UART_RX_AF                     HAL_GPIO_AF8_USART6


#endif // __appBoard_STM32F746G_DISCO__
