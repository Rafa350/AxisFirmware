#include "eos.h"
#include "HAL/halGPIO.h"

#include "axisMotor.h"


using namespace axis;


/// ----------------------------------------------------------------------
/// \bried    Constructor.
/// \param    configuration: Parametres de configuracio.
///
Motor::Motor(
    const Configuration& cfg) {

    this->cfg = cfg;
    
    initialize();
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitzacio.
/// 
void Motor::initialize() {
    
	// Inicialitza el pin STEP
	//
    halGPIOInitializePin(cfg.stepPort, cfg.stepPin, 
        HAL_GPIO_MODE_OUTPUT_PP | HAL_GPIO_INIT_CLR, HAL_GPIO_AF_NONE);
   
    // Inicialitza el pin DIR
    //
    halGPIOInitializePin(cfg.directionPort, cfg.directionPin, 
        HAL_GPIO_MODE_OUTPUT_PP | HAL_GPIO_INIT_CLR, HAL_GPIO_AF_NONE);
    
    // Inicialitza el pin ENABLE
    //
    if (cfg.enablePort != 0xFF)
        halGPIOInitializePin(cfg.enablePort, cfg.enablePin, 
            HAL_GPIO_MODE_OUTPUT_PP | HAL_GPIO_INIT_CLR, HAL_GPIO_AF_NONE);

    // Inicialitza el pin HOME
    //
#if defined(EOS_STM32)
    halGPIOInitializePin(cfg.homePort, cfg.homePin, HAL_GPIO_MODE_INPUT | HAL_GPIO_PULL_UP, HAL_GPIO_AF_NONE);
#elif defined(EOS_PIC32)
    halGPIOInitializePin(cfg.homePort, cfg.homePin, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
    //halCNInitializeLine
#endif
    
    // Inicialitza el pin LIMIT
    //
#if defined(EOS_STM32)
    halGPIOInitializePin(cfg.limitPort, cfg.limitPin, HAL_GPIO_MODE_INPUT | HAL_GPIO_PULL_UP, HAL_GPIO_AF_NONE);
#elif defined(EOS_PIC32)
    halGPIOInitializePin(cfg.limitPort, cfg.limitPin, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
    //halCNInitializeLine
#endif
}


/// ----------------------------------------------------------------------
/// \brief    Selecciona l'estat del motor.
/// \param    enable: El nou estat del motor.
///
void Motor::setState(
    State state) const {

    if (cfg.enablePin != 0xFF)
        halGPIOWritePin(cfg.enablePort, cfg.enablePin, state == State::enabled);
}


/// ----------------------------------------------------------------------
/// \brief    Selecciona la direccio de gir.
/// \param    direction: La nova direccio de gir.
///
void Motor::setDirection(
    Direction direction) const {

    halGPIOWritePin(cfg.directionPort, cfg.directionPin, direction == Direction::backward);
}


/// ----------------------------------------------------------------------
/// \brief    Asigna el valor de la senyal de pulsos.
/// \param    step: El valor de la senyal.
///
void Motor::setStep(
    Step step) const {

    switch (step) {
        case Step::idle:
            halGPIOClearPin(cfg.stepPort, cfg.stepPin);
            break;
            
        case Step::active:
            halGPIOSetPin(cfg.stepPort, cfg.stepPin);
            break;
            
        case Step::toggle:
            halGPIOTogglePin(cfg.stepPort, cfg.stepPin);
            break;
    }
}


/// ----------------------------------------------------------------------
/// \brief    Obte l'estat del sensor HOME.
/// \return   L'estat del sensor.
///
bool Motor::getHome() const {
    
    return halGPIOReadPin(cfg.homePort, cfg.homePin);
}


/// ----------------------------------------------------------------------
/// \brief    Obte l'estat del sensor LIMIT.
/// \return   L'estat del sensor.
///
bool Motor::getLimit() const {

    return halGPIOReadPin(cfg.limitPort, cfg.limitPin);
}
