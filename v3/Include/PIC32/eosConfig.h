#ifndef __eosConfig__
#define __eosConfig__


#define USE_LEDS_LED1
#define USE_LEDS_LED2
#define USE_LEDS_LED3

#define USE_SWITCHES_SW1
#define USE_SWITCHES_SW2
#define USE_SWITCHES_SW3


#include "Board/eosBoard.h"
#include "Board/appBoard.h"


// Configuracio global del sistema
//
#define Eos_ApplicationTickEnabled                    0    
#define Eos_UseRTOS                                   1
#define Eos_UseApplicationInitializeCallback          0
#define Eos_UseApplicationTerminateCallback           0

// Configuracio del servei DigInput
//
#define DigInputService_TimerInterruptPriority        HAL_INT_PRIORITY_LEVEL2
#define DigInputService_TimerInterruptSubPriority     HAL_INT_SUBPRIORITY_LEVEL2


#endif // __eosConfig__
