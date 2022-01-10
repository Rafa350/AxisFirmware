#include "eos.h"
#include "eosAssert.h"
#include "HAL/halTMR.h"
#include "HAL/halUART.h"


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM2_IRQn
///
extern "C" void TIM2_IRQHandler() {

	extern halTMRHandler hDigInputTimer;

	if (hDigInputTimer != nullptr)
		halTMRInterruptHandler(hDigInputTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM3_IRQn
///
extern "C" void TIM3_IRQHandler() {

	extern halTMRHandler hDigOutputTimer;

	if (hDigOutputTimer != nullptr)
		halTMRInterruptHandler(hDigOutputTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM4_IRQn
///
extern "C" void TIM4_IRQHandler() {

	extern halTMRHandler hMotionTimer;

	if (hMotionTimer != nullptr)
		halTMRInterruptHandler(hMotionTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio UART6_IRQn
///
extern "C" void UART6_IRQHandler() {

	extern halUARTHandler hUARTHandler;

	if (hUARTHandler != nullptr)
		halUARTInterruptHandler(hUARTHandler);
}
