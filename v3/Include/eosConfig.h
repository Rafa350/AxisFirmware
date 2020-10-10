#ifndef __eosConfig__
#define __eosConfig__


#if defined(EOS_PIC32)
	#include "PIC32\eosConfig.h"

#elif defined(EOS_STM32F7)
	#include "STM32F7\eosConfig.h"

#endif


#endif // __eosCOnfig__
