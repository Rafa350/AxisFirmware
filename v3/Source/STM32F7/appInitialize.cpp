#include "eos.h"
#include "eosAssert.h"
#include "hal/halSYS.h"
#include "hal/halINT.h"
#include "stm32f7xx_hal.h"
#include "stm32f7xx_hal_rcc.h"
#include "stm32f7xx_hal_flash_ex.h"
#include "stm32746g_discovery.h"
#include "stm32746g_discovery_sdram.h"


/// ----------------------------------------------------------------------
/// \brief    Inicialitza el clock del sistema
///
static void initializeClock() {

	RCC_ClkInitTypeDef clkInit;
	RCC_OscInitTypeDef oscInit;

	// Enable HSE Oscillator and activate PLL with HSE as source
	//
	oscInit.OscillatorType = RCC_OSCILLATORTYPE_HSE;
	oscInit.HSEState = RCC_HSE_ON;
	oscInit.HSIState = RCC_HSI_OFF;
	oscInit.PLL.PLLState = RCC_PLL_ON;
	oscInit.PLL.PLLSource = RCC_PLLSOURCE_HSE;
	oscInit.PLL.PLLM = 25;
	oscInit.PLL.PLLN = 432;
	oscInit.PLL.PLLP = RCC_PLLP_DIV2;
	oscInit.PLL.PLLQ = 9;
	HAL_RCC_OscConfig(&oscInit);
	HAL_PWREx_EnableOverDrive();

	// Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2
	// clocks dividers
	//
	clkInit.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
	clkInit.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	clkInit.AHBCLKDivider = RCC_SYSCLK_DIV1;
	clkInit.APB1CLKDivider = RCC_HCLK_DIV4;
	clkInit.APB2CLKDivider = RCC_HCLK_DIV2;
	HAL_RCC_ClockConfig(&clkInit, FLASH_LATENCY_7);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitza la ram SD
///
static void initializeSDRam() {

	BSP_SDRAM_Init();
	BSP_SDRAM_Initialization_sequence(REFRESH_COUNT);
}


/// ----------------------------------------------------------------------
/// \brief Inicialitza el hardware del sistema.
///
void appInitialize() {

	//__halINTDisableInterrupts();

    SCB_EnableICache();
    SCB_EnableDCache();

    halSYSInitialize();

    initializeClock();
	initializeSDRam();

	__HAL_FREEZE_TIM2_DBGMCU();
	__HAL_FREEZE_TIM3_DBGMCU();
	//__HAL_FREEZE_TIM4_DBGMCU();
	__HAL_FREEZE_TIM6_DBGMCU();

	//__halINTEnableInterrupts();
}
