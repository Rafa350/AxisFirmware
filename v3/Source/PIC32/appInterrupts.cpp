#include "eos.h"
#include "HAL\halTMR.h"

#include "sys/attribs.h"


#if defined(_TMR1) && (HAL_TMR_USE_T1_INTERRUPT == 1)
extern "C" void __ISR(_TIMER_1_VECTOR, IPL2SOFT) isrTMR1Wrapper(void);
#endif
#if defined(_TMR2) && defined(HAL_TMR_USE_T2_INTERRUPT)
extern "C" void __ISR(_TIMER_2_VECTOR, IPL2SOFT) isrTMR2Wrapper(void);
#endif
#if defined(_TMR3) && defined(HAL_TMR_USE_T3_INTERRUPT)
extern "C" void __ISR(_TIMER_3_VECTOR, IPL2SOFT) isrTMR3Wrapper(void);
#endif
#if defined(_TMR4) && defined(HAL_TMR_USE_T4_INTERRUPT)
extern "C" void __ISR(_TIMER_4_VECTOR, IPL2SOFT) isrTMR4Wrapper(void);
#endif
#if defined(_TMR5) && defined(HAL_TMR_USE_T5_INTERRUPT)
extern "C" void __ISR(_TIMER_5_VECTOR, IPL2SOFT) isrTMR5Wrapper(void);
#endif


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector _TIMER_1_VECTOR
///
#ifdef _TMR1
extern "C" void isrTMR1Handler(void) {

}
#endif


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector _TIMER_2_VECTOR
///
#ifdef _TMR2
extern "C" void isrTMR2Handler(void) {

    extern halTMRHandler hDigInputTimer;

    halTMRInterruptHandler(hDigInputTimer);
}
#endif


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector _TIMER_3_VECTOR
///
#ifdef _TMR3
extern "C" void isrTMR3Handler(void) {

    extern halTMRHandler hDigOutputTimer;

    halTMRInterruptHandler(hDigOutputTimer);
}
#endif


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector _TIMER_4_VECTOR
///
#ifdef _TMR4
extern "C" void isrTMR4Handler(void) {

    extern halTMRHandler hMotionTimer;

    halTMRInterruptHandler(hMotionTimer);
}
#endif


/// ----------------------------------------------------------------------
/// \brief    Procesa el vector _TIMER_5_VECTOR
///
#ifdef _TMR5
extern "C" void isrTMR5Handler(void) {
}
#endif
