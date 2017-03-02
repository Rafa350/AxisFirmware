#include "Motor.hpp"
#include "HAL/halGPIO.h"


using namespace axis;


#define ON   false
#define OFF  true


/// ----------------------------------------------------------------------
/// \bried Constructor.
/// \param stepPin: Pin de la senyal STEP.
/// \param directionPin: Pin de la senyal DIR.
/// \param enablePin: Pin de la senyal ENABLE. 0xFF si no s'utilitza.
/// \param homePin: Pin del sensor HOME
/// \param limitPin: Pin del sensor LIMIT
///
Motor::Motor(
    uint8_t _stepPin,
    uint8_t _directionPin,
    uint8_t _enablePin,
    uint8_t _homePin,
    uint8_t _limitPin):
    stepPin(_stepPin),
    directionPin(_directionPin),
    enablePin(_enablePin),
    homePin(_homePin),
    limitPin(_limitPin) {

    halGPIOPinSetState(stepPin, OFF);
    halGPIOPinSetModeOutput(stepPin, false);
    
    halGPIOPinSetState(directionPin, OFF);
    halGPIOPinSetModeOutput(directionPin, false);
    
    if (enablePin != 0xFF) {
        halGPIOPinSetState(enablePin, OFF);
        halGPIOPinSetModeOutput(enablePin, false);
    }
    
    if (homePin != 0xFF)
        halGPIOPinSetModeInput(homePin);

    if (limitPin != 0xFF)
        halGPIOPinSetModeInput(limitPin);
}


/// ----------------------------------------------------------------------
/// \brief Selecciona l'estat del motor.
/// \param enable: El nou estat del motor.
///
void Motor::setState(
    MotorState state) const {

    if (enablePin != 0xFF)
        halGPIOPinSetState(enablePin, state == MotorState::enabled ? ON : OFF);
}


/// ----------------------------------------------------------------------
/// \brief Selecciona la direccio de gir.
/// \param direction: La nova direccio de gir.
///
void Motor::setDirection(
    MotorDirection direction) const {

    halGPIOPinSetState(directionPin, direction == MotorDirection::backward ? ON : OFF);
}


/// ----------------------------------------------------------------------
/// \brief Asigna el valor de la senyal de pulsos.
/// \param step: El valor de la senyal.
///
void Motor::setStep(
    MotorStep step) const {

    switch (step) {
        case MotorStep::idle:
            halGPIOPinSetState(stepPin, OFF);
            break;
            
        case MotorStep::active:
            halGPIOPinSetState(stepPin, ON);
            break;
            
        case MotorStep::toggle:
            halGPIOPinToggleState(stepPin);
            break;
    }
}


/// ----------------------------------------------------------------------
/// \brief Obte l'estat del sensor HOME.
/// \return L'estat del sensor.
///
bool Motor::getHome() const {
    
    if (homePin == 0xFF)
        return false;
    else
        return halGPIOPinGetState(homePin);
}


/// ----------------------------------------------------------------------
/// \brief Obte l'estat del sensor LIMIT.
/// \return L'estat del sensor.
///
bool Motor::getLimit() const {

    if (limitPin == 0xFF)
        return false;
    else
        return halGPIOPinGetState(limitPin);
}
