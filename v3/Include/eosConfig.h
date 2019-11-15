#ifndef __eosConfig__
#define __eosConfig__


#define USE_LEDS_LED1
#define USE_LEDS_LED2
#if defined(HARDWARE_PIC32_USB_STARTER_KIT_I)
	#define USE_LEDS_LED3
#endif

#define USE_SWITCHES_SW1
#if defined(HARDWARE_PIC32_USB_STARTER_KIT_I)
#define USE_SWITCHES_SW2
#endif
#if defined(HARDWARE_PIC32_USB_STARTER_KIT_I)
#define USE_SWITCHES_SW3
#endif


#define AXIS_MOTOR_X_PORT
#define AXIS_MOTOR_X_PIN

#define AXIS_MOTOR_Y_PORT
#define AXIS_MOTOR_Y_PIN


#include "board/board.h"


#endif // __eosConfig__
