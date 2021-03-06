#include "eos.h"
#include "HAL/halGPIO.h"

#include "axisMotor.h"


using namespace axis;


/// ----------------------------------------------------------------------
/// \bried    Constructor.
/// \param    configuration: Parametres de configuracio.
///
Motor::Motor(
    const Configuration& cfg):

    cfg(cfg) {

    initialize();
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitzacio.
///
void Motor::initialize() {

}


/// ----------------------------------------------------------------------
/// \brief    Selecciona l'estat del motor.
/// \param    enable: El nou estat del motor.
///
void Motor::setState(
    State state) const {

    if (cfg.enablePin != HAL_GPIO_PIN_NONE)
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

    return halGPIOReadPin(cfg.homePort, cfg.homePin) == 0;
}


/// ----------------------------------------------------------------------
/// \brief    Obte l'estat del sensor LIMIT.
/// \return   L'estat del sensor.
///
bool Motor::getLimit() const {

    return halGPIOReadPin(cfg.limitPort, cfg.limitPin) == 0;
}
