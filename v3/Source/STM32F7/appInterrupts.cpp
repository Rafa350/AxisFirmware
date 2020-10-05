#include "eos.h"
#include "HAL/halTMR.h"


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM2_IRQn
///
extern "C" void TIM2_IRQHandler() {

	extern TMRHandler hDigInputTimer;

	halTMRInterruptHandler(hDigInputTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM3_IRQn
///
extern "C" void TIM3_IRQHandler() {

	extern TMRHandler hDigOutputTimer;

	halTMRInterruptHandler(hDigOutputTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector d'interrupcio TIM4_IRQn
///
extern "C" void TIM4_IRQHandler() {

	extern TMRHandler hMotionTimer;

	halTMRInterruptHandler(hMotionTimer);
}
