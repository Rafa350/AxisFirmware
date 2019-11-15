#include "eos.h"
#include "HAL/halGPIO.h"

#include "motor.h"


using namespace axis;


/// ----------------------------------------------------------------------
/// \bried    Constructor.
/// \param    configuration: Parametres de configuracio.
///
Motor::Motor(
    const Configuration *configuration) {
    
    stepPort = configuration->stepPort;
    stepPin = configuration->stepPin;

    directionPort = configuration->directionPort;
    directionPin = configuration->directionPin;
    
    enablePort = configuration->enablePort;
    enablePin = configuration->enablePin;
    
    homePort = configuration->homePort;
    homePin = configuration->homePin;

    limitPort = configuration->limitPort;
    limitPin = configuration->limitPin;
    
    halGPIOInitializePin(stepPort, stepPin, HAL_GPIO_MODE_OUTPUT_PP, HAL_GPIO_AF_NONE);
    halGPIOInitializePin(directionPort, directionPin, HAL_GPIO_MODE_OUTPUT_PP, HAL_GPIO_AF_NONE);
    halGPIOInitializePin(enablePort, enablePin, HAL_GPIO_MODE_OUTPUT_PP, HAL_GPIO_AF_NONE);

    halGPIOInitializePin(homePort, homePin, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
    halGPIOInitializePin(limitPort, limitPin, HAL_GPIO_MODE_INPUT, HAL_GPIO_AF_NONE);
}


/// ----------------------------------------------------------------------
/// \brief    Selecciona l'estat del motor.
/// \param    enable: El nou estat del motor.
///
void Motor::setState(
    State state) const {

    if (enablePin != 0xFF)
        halGPIOWritePin(enablePort, enablePin, state == State::enabled);
}


/// ----------------------------------------------------------------------
/// \brief    Selecciona la direccio de gir.
/// \param    direction: La nova direccio de gir.
///
void Motor::setDirection(
    Direction direction) const {

    halGPIOWritePin(directionPort, directionPin, direction == Direction::backward);
}


/// ----------------------------------------------------------------------
/// \brief    Asigna el valor de la senyal de pulsos.
/// \param    step: El valor de la senyal.
///
void Motor::setStep(
    Step step) const {

    switch (step) {
        case Step::idle:
            halGPIOClearPin(stepPort, stepPin);
            break;
            
        case Step::active:
            halGPIOSetPin(stepPort, stepPin);
            break;
            
        case Step::toggle:
            halGPIOTogglePin(stepPort, stepPin);
            break;
    }
}


/// ----------------------------------------------------------------------
/// \brief    Obte l'estat del sensor HOME.
/// \return   L'estat del sensor.
///
bool Motor::getHome() const {
    
    return halGPIOReadPin(homePort, homePin);
}


/// ----------------------------------------------------------------------
/// \brief    Obte l'estat del sensor LIMIT.
/// \return   L'estat del sensor.
///
bool Motor::getLimit() const {

    return halGPIOReadPin(limitPort, limitPin);
}
