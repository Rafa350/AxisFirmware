#ifndef __eosConfig__
#define __eosConfig__


#define USE_LEDS_LED1
#define USE_LEDS_LED2
#define USE_LEDS_LED3

#define USE_SWITCHES_SW1
#define USE_SWITCHES_SW2
#define USE_SWITCHES_SW3


#include "Board/eosBoard.h"


#if defined(HARDWARE_PIC32_USB_STARTER_KIT_I)
    #include "eosConfig_PIC32_USB_STARTER_KIT_I.h"
 
#elif defined(HARDWARE_STM32F746G_DISCO)
    #include "eosConfig_STM32F746G_DISCO.h"
#endif


#endif // __eosConfig__
