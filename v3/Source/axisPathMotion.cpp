#include "eos.h"
#include "eosAssert.h"
#include "HAL/halSYS.h"
#include "HAL/halTMR.h"
#include "HAL/halINT.h"
#include "System/eosMath.h"
#include "System/Core/eosTask.h"

#include "axisMotion.h"
#include "axisMotor.h"

#include "limits.h"
#include "math.h"


#define HZ                        100000.0L

#define FRACTIONAL_BITS           48
#define FRACTIONAL_MASK           (((uint64_t)1 << FRACTIONAL_BITS) - 1)


// Valors minims
//
#define MOTION_MIN_SPEED          10
#define MOTION_MIN_ACCELERATION   10
#define MOTION_MIN_JERK           100

// Valors maxims
//
#define MOTION_MAX_SPEED          1500000
#define MOTION_MAX_ACCELERATION   1500000
#define MOTION_MAX_JERK           1500000

// Valors per defecte
//
#define MOTION_DEF_SPEED          500000
#define MOTION_DEF_ACCELERATION   500000
#define MOTION_DEF_JERK           50000


#if defined(EOS_STM32)
#define __halTMRClearInterruptFlags(hTimer)      halTMRClearInterruptFlags(hTimer, HAL_TMR_EVENT_UP)
#define __halTMREnableInterrupts(hTimer)         halTMREnableInterrupts(hTimer, HAL_TMR_EVENT_UP)
#define __halTMRDisableInterrupts(hTimer)        halTMRDisableInterrupts(hTimer, HAL_TMR_EVENT_UP)
#elif defined(EOS_PIC32)
#define __halTMRClearInterruptFlags(hTimer)      halTMRClearInterruptFlags(hTimer)
#define __halTMREnableInterrupts(hTimer)         halTMREnableInterrupts(hTimer)
#define __halTMRDisableInterrupts(hTimer)        halTMRDisableInterrupts(hTimer)
#endif



using namespace eos;
using namespace axis;


// Macros per facilitar els calculs d'esponencials i arrels
//
#define exp2(a)     ((a) * (a))
#define exp3(a)     ((a) * (a) * (a))
#define exp4(a)     ((a) * (a) * (a) * (a))
#define rt2(a)      sqrtl(a)
#define rt3(a)      cbrtl(a)


/// ----------------------------------------------------------------------
/// \brief    Constructor.
/// \param    cfg: Parametres de configuracio.
///
Motion::Motion(
    const Configuration& cfg):

	cfg(cfg),
    busy(false) {

    for (int i = 0; i < cfg.numAxis; i++) {
        axisPos[i] = 0;
        axisMax[i] = INT_MAX;
        axisMin[i] = INT_MIN;
    }

    jerk = MOTION_DEF_JERK;
    maxAcceleration = MOTION_DEF_ACCELERATION;
    maxSpeed = MOTION_DEF_SPEED;

    timerInitialize();
}


/// ----------------------------------------------------------------------
/// \brief    Destructor.
///
Motion::~Motion() {
}


/// ----------------------------------------------------------------------
/// \brief    Assigna la velocitat maxima.
/// \param    speed: El nou valor.
///
void Motion::setMaxSpeed(
    int speed) {

    eosAssert(speed > 0);

    // Si es ocupat no fa res
    //
    if (busy)
        return;

    // Ajusta limits
    //
    if (speed < MOTION_MIN_SPEED)
        speed = MOTION_MIN_SPEED;
    else if (speed > MOTION_MAX_SPEED)
        speed = MOTION_MAX_SPEED;

    // Canvia la velocitat maxima
    //
    this->maxSpeed = speed;
}


/// ----------------------------------------------------------------------
/// \brief    Assigna l'aceleracio maxima.
/// \param    acceleration: El nou valor.
///
void Motion::setMaxAcceleration(
    int acceleration) {

	eosAssert(acceleration > 0);

    // Si es ocupat no fa res
    //
    if (busy)
        return;

    // Ajusta els limits
    //
    if (acceleration < MOTION_MIN_ACCELERATION)
        acceleration = MOTION_MIN_ACCELERATION;
    else if (acceleration > MOTION_MAX_ACCELERATION)
        acceleration = MOTION_MAX_ACCELERATION;

    // Canvia l'acceleracio maxima
    //
    this->maxAcceleration = acceleration;
}


/// ----------------------------------------------------------------------
/// \brief    Asigna el impuls.
/// \param    jerk: El valor del impuls.
///
void Motion::setJerk(
    int jerk) {

	eosAssert(jerk > 0);

    // Si es ocupat no fa res
    //
    if (busy)
        return;

    // Ajusta els limits
    //
    if (jerk < MOTION_MIN_JERK)
        jerk = MOTION_MIN_JERK;
    else if (jerk > MOTION_MAX_JERK)
        jerk = MOTION_MAX_JERK;

    // Canvia el impuls
    //
    this->jerk = jerk;
}


/// ----------------------------------------------------------------------
/// \brief    Asigna el limit superior.
///
void Motion::setMaxPosition(
    const Vector& position) {

    axisMax = position;
}


/// ----------------------------------------------------------------------
/// \brief    Asigna el limit inferior.
///
void Motion::setMinPosition(
    const Vector& position) {

    axisMin = position;
}


/// ----------------------------------------------------------------------
/// \bried    Asigna la posicio actual com la posicio HOME.
///
void Motion::setHome() {

    int v[] = {0, 0, 0};
    axisPos = Vector(v);
}


/// ----------------------------------------------------------------------
/// \brief    Obte la posicio dels eixos.
/// \param    axis: Identificador del eix.
/// \return   Posicio del eix
///
int Motion::getAxis(
    int axis) const {

	eosAssert(axis >= 0);

    int position = -1;

    if (axis <= cfg.numAxis) {
        Task::enterCriticalSection();
        position = axisPos[axis];
        Task::exitCriticalSection();
    }

    return position;
}


/// ----------------------------------------------------------------------
/// \brief    Obte la posicio dels eixos.
/// \return   La posicio.
///
Motion::Vector Motion::getPosition() const {

    Vector position;
    Task::enterCriticalSection();
    position = axisPos;
    Task::enterCriticalSection();
    return position;
}


/// ----------------------------------------------------------------------
/// \brief    Realitza un moviment absolut a la posicio especificada
/// \param    position: Posicio
///
void Motion::doMoveAbs(
    const Vector& position) {

    // Si es ocupat no fa res
    //
    if (busy)
        return;

    // Ajusta els limits
    //
    Vector newPosition(position);
    for (int i = 0; i < cfg.numAxis; i++) {
        if (position[i] < axisMin[i])
            newPosition[i] = axisMin[i];
        else if (position[i] > axisMax[i])
            newPosition[i] = axisMax[i];
    }

    // Si cal moure, ho fa
    //
    for (int i = 0; i < cfg.numAxis; i++) {
        if (newPosition[i] != axisPos[i]) {
            start(newPosition);
            break;
        }
    }
}


/// ----------------------------------------------------------------------
/// \brief    Realitza un moviment absolut en el eix especificat.
/// \param    axis: Eix a moure
/// \param    position: Nova posicio
///
void Motion::doMoveAbs(
    int axis,
    int position) {

    // Comprova si els parametres son valids
    //
    if (axis >= cfg.numAxis)
        return;

    // Calcula el moviment a realitzar
    //
    Vector newPosition;
    for (int i = 0; i < cfg.numAxis; i++)
        if (i == axis)
            newPosition[i] = position;
        else
            newPosition[i] = axisPos[i];

    // Realitza el moviment
    //
    doMoveAbs(newPosition);
}


/// ----------------------------------------------------------------------
/// \brief    Realitza un moviment relatiu a la posicio actual
/// \param    delta: Increment de posicio
///
void Motion::doMoveRel(
    const Vector& delta) {

    Vector position;
    for (int i = 0; i < cfg.numAxis; i++)
        position[i] = axisPos[i] + delta[i];
    doMoveAbs(position);
}


/// ----------------------------------------------------------------------
/// \brief    Realitza un moviment relatiu a la posicio actual.
/// \param    axis: L'eix a moure.
/// \param    delte: Distancia.
///
void Motion::doMoveRel(
    int axis,
    int delta) {

    // Comprova si els parametres son valids
    //
    if (axis >= cfg.numAxis)
        return;

    // Calcula el moviment a realitzar
    //
    Vector newDelta;
    for (int i = 0; i < cfg.numAxis; i++)
        if (i == axis)
            newDelta[i] = delta;
        else
            newDelta[i] = 0;

    // Realitza el moviment
    //
    doMoveRel(newDelta);
}


/// ----------------------------------------------------------------------
/// \brief    Realitza un moviment a la posicio HOME
///
void Motion::doMoveHome() {

    int v[] = {0, 0, 0};
    doMoveAbs(v);
}


/// ---------------------------------------------------------------------
/// \brief    Atura el moviment inmediatament
///
void Motion::doStop() {

    stop();
}


/// ---------------------------------------------------------------------
/// \brief    Initialitza el temporitzador
///
void Motion::timerInitialize() {

    halTMRSetInterruptFunction(cfg.hTimer, tmrInterruptFunction, this);
}


/// ----------------------------------------------------------------------
/// \brief    Activa el temporitzador i comença a disparar interrupcions
///
void Motion::timerStart() {

	__halTMRClearInterruptFlags(cfg.hTimer);
	__halTMREnableInterrupts(cfg.hTimer);
    halTMRStartTimer(cfg.hTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Para el temporitzador
///
void Motion::timerStop() {

    halTMRStopTimer(cfg.hTimer);
	__halTMRDisableInterrupts(cfg.hTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa la interrupcio del temporitzador.
/// \param    handler: Handler del temporitzador.
/// \param    param: Handler del servei.
///
void Motion::tmrInterruptFunction(
    TMRHandler handler,
    void* param) {

    Motion* motion = static_cast<Motion*>(param);
    motion->loop();
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitzacio del moviment.
/// \param    position: Coordinades absolutes del desti del moviment.
/// \remarks  Es calcula suposant que la velocitat inicial i final es 0.
///
void Motion::start(
    const Vector& position) {

    // Posa el controlador en modus ocupat
    //
    busy = true;

    // Realitza les operacions de calcul de trajectoria
    //
    int delta[MOTION_MAX_AXIS];
    for (int i = 0; i < cfg.numAxis; i++) {
        int d = position[i] - axisPos[i];
        if (d < 0) {
            d = -d;
            inc[i] = -1;
            cfg.motors[i]->setDirection(Motor::Direction::backward);
        }
        else {
            inc[i] = 1;
            cfg.motors[i]->setDirection(Motor::Direction::forward);
        }
        delta[i] = d;
    }

    int deltaMax = INT_MIN;
    for (int i = 0; i < cfg.numAxis; i++) {
        if (delta[i] > deltaMax) {
            deltaMax = delta[i];
            mainAxis = i;
        }
    }
    for (int i = 0; i < cfg.numAxis; i++) {
        ddelta[i] = delta[i] * 2;
        error[i] = ddelta[i] - deltaMax;
    }
    stepCounter = 0;
    stepNumber = deltaMax;

    // Realitza les operacions de calcul del perfil de velocitat. Interesa
    // calcular el temps dels tram de les fases I i II (T1 i T2 respectivament),
    // el reste s'interpolen per simetries. El temps, en realitat, es el numero
    // d'interrupcions, per tant contar interrupcions es contar el temps.
    //
    long double S1, S2, S3;
    long double V1, V2, V3;
    long double T1, T2, T3;
    long double distance, speed, acceleration, jrk;
    long double halfDistance, halfSpeed;

    speed = maxSpeed;
    halfSpeed = 0.5L * speed;
    acceleration = maxAcceleration;
    jrk = jerk;
    distance = stepNumber;
    halfDistance = 0.5L * distance;

    T1 = acceleration / jrk;
    V1 = 0.5L * jrk * exp2(T1);

    if (V1 > halfSpeed) {

        T1 = rt2(speed / jrk);
        V1 = halfSpeed;

        T2 = 0;
        V2 = V1;

        T3 = T1;
        V3 = speed;

        S1 = (jrk * exp3(T1)) / 6.0L;
        S2 = 0.0L;
        S3 = (V2 * T3) + (0.5L * jrk * T1 * exp2(T3)) - (jrk * exp3(T3) / 6.0L);
    }
    else {

        T2 = (speed - (2.0L * V1)) / acceleration;
        V2 = V1 + (acceleration * T2);

        T3 = T1;
        V3 = speed;

        S1 = jrk * exp3(T1) / 6.0L;
        S2 = (V1 * T2) + (0.5L * acceleration * exp2(T2));
        S3 = (V2 * T3) + (0.5L * acceleration * exp2(T3)) - (jrk * exp3(T3) / 6.0L);
    }

    if ((S1 + S2 + S3) > halfDistance) {
        if ((S1 + S3) > halfDistance) {

            T1 = rt3(halfDistance / jrk);
            V1 = 0.5L * jrk * exp2(T1);

            T2 = 0.0L;
            V2 = V1;

            T3 = T1;
        }
        else {

            T1 = acceleration / jrk;
            V1 = 0.5L * jrk * exp2(T1);

            T2 = (1.0L / (2.0L * jrk * T1)) *
                 (-3.0L * jrk * exp2(T1) + rt2(exp2(jrk) * exp4(T1) + 4.0L * jrk * T1 * distance));
            V2 = V1 + (T2 * acceleration);

            T3 = T1;
            V3 = speed;
        }
    }

    // Escala per treballar a la frequencia de les interrupcions
    //
    timeSAccel = (int64_t) (T1 * HZ);
    timeSConst = (int64_t) (T2 * HZ);

    // Inicialitza les variables
    //
    count = 0;
    phase = Phase::phase_I;
    curJerk = (int64_t) (jrk * 281474976710656.0L / exp3(HZ));
    curAcceleration = 0;
    curSpeed = 0;
    curPosition = 0;

    // Activa el temporitzador i comença a generar interrupcions
    //
    timerStart();
}


/// ----------------------------------------------------------------------
/// \brief    Finalitza el moviment inmediatament.
///
void Motion::stop() {

    // Desactiva el temporitzador, i deixa de generar interrupcions.
    //
    timerStop();

    // Posa els pins de control dels motors en estat desactivat.
    //
    for (int i = 0; i < cfg.numAxis; i++)
        cfg.motors[i]->setStep(Motor::Step::idle);

    // Indica que el controlador esta lliure per un altre moviment.
    //
    busy = false;
}


/// ----------------------------------------------------------------------
/// \brief    Executa un pas del moviment.
///
void Motion::loop() {

    bool doStep = false;

    for (int i = 0; i < cfg.numAxis; i++)
        cfg.motors[i]->setStep(Motor::Step::idle);

    switch (phase) {

        // Fase d'increment de l'acceleracio
        //
        case Phase::phase_I:
            if (count < timeSAccel) {
                curAcceleration += curJerk;
                curSpeed += curAcceleration;
                curPosition += curSpeed;
                if (curPosition & ~FRACTIONAL_MASK) {
                    curPosition &= FRACTIONAL_MASK;
                    doStep = true;
                }
                count++;
            }

            if (count >= timeSAccel) {
                count = 0;
                phase = Phase::phase_II;
            }
            break;

        // Fase d'acceleracio constant
        //
        case Phase::phase_II:
            if (count < timeSConst) {
                curSpeed += curAcceleration;
                curPosition += curSpeed;
                if (curPosition & ~FRACTIONAL_MASK) {
                    curPosition &= FRACTIONAL_MASK;
                    doStep= true;
                }
                count++;
            }

            if (count >= timeSConst) {
                count = 0;
                phase = Phase::phase_III;
            }
            break;

        // Fase de decrement de l'acceleracio
        //
        case Phase::phase_III:
            if (count < timeSAccel) {
                curAcceleration -= curJerk;
                curSpeed += curAcceleration;
                curPosition += curSpeed;
                if (curPosition & ~FRACTIONAL_MASK) {
                    curPosition &= FRACTIONAL_MASK;
                    doStep = true;
                }
                count++;
            }

            if (count >= timeSAccel) {
                count = 0;
                phase = Phase::phase_IV;
                if ((stepCounter * 2) < stepNumber)
                    stepSFlat = (stepNumber - (stepCounter * 2)) + 1;
                else
                    stepSFlat = 1;
            }
            break;

        // Fase de velocitat constant
        //
        case Phase::phase_IV:
            if (count < stepSFlat) {
                curPosition += curSpeed;
                if (curPosition & ~FRACTIONAL_MASK) {
                    curPosition &= FRACTIONAL_MASK;
                    doStep = true;
                    count++; // Esta aqui perque conta distancia (pasos)
                }
            }

            if (count >= stepSFlat) {
                count = 0;
                phase = Phase::phase_V;
            }
            break;

        case Phase::phase_V:
            if (count < timeSAccel) {
                curAcceleration += curJerk;
                curSpeed -= curAcceleration;
                curPosition += curSpeed;
                if (curPosition & ~FRACTIONAL_MASK) {
                    curPosition &= FRACTIONAL_MASK;
                    doStep = true;
                }
                count++;
            }

            if (count >= timeSAccel) {
                count = 0;
                phase = Phase::phase_VI;
            }
            break;

        case Phase::phase_VI:
            if (count < timeSConst) {
                curSpeed -= curAcceleration;
                curPosition += curSpeed;
                if (curPosition & ~FRACTIONAL_MASK) {
                    curPosition &= FRACTIONAL_MASK;
                    doStep = true;
                }
                count++;
            }

            if (count >= timeSConst) {
                count = 0;
                phase = Phase::phase_VII;
            }
            break;

        case Phase::phase_VII:
            if (stepCounter < stepNumber) { // Tots els pasos que resten

                // Evita que la velocitat sigui negativa
                //
                if (curAcceleration > (2 * curJerk)) {
                    curAcceleration -= curJerk;
                    curSpeed -= curAcceleration;
                }
                curPosition += curSpeed;

                if (curPosition & ~FRACTIONAL_MASK) {
                    curPosition &= FRACTIONAL_MASK;
                    doStep = true;
                }
            }
            break;
    }

    // Realitza un pas de la trajectoria utilitzan Besenham
    //
    if (doStep) {

        int ma = mainAxis;
        for (int i = 0; i < cfg.numAxis; i++) {
            if (i != ma) {
                if (error[i] > 0) {
                    error[i] -= ddelta[ma];
                    axisPos[i] += inc[i];
                    cfg.motors[i]->setStep(Motor::Step::active);
                }
                error[i] += ddelta[i];
            }
        }
        axisPos[ma] += inc[ma];
        cfg.motors[ma]->setStep(Motor::Step::active);

        // Incrementa el contador de pasos
        //
        stepCounter += 1;

        // Si ha acabat, finalitza el moviment
        //
        if (stepCounter == stepNumber)
            stop();
    }
}
