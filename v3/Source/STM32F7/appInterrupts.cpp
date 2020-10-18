#include "eos.h"
#include "HAL/halTMR.h"


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM2_IRQn
///
extern "C" void TIM2_IRQHandler() {

	extern TMRHandler hDigInputTimer;

	if (hDigInputTimer != nullptr)
		halTMRInterruptHandler(hDigInputTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM3_IRQn
///
extern "C" void TIM3_IRQHandler() {

	extern TMRHandler hDigOutputTimer;

	if (hDigOutputTimer != nullptr)
		halTMRInterruptHandler(hDigOutputTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM4_IRQn
///
extern "C" void TIM4_IRQHandler() {

	extern TMRHandler hMotionTimer;

	if (hMotionTimer != nullptr)
		halTMRInterruptHandler(hMotionTimer);
}
