#include "Motion.hpp"
#include "Motor.hpp"
#include "System/Core/eosTask.hpp"
#include "HAL/halTMR.h"
#include "limits.h"
#include "sys/attribs.h"
#include "Math.h"


#define MOTION_TIMER_ID       HAL_TMR_T2

#define HZ                    100000.0L

#define FRACTIONAL_BITS       48
#define FRACTIONAL_MASK       (((uint64_t)1 << FRACTIONAL_BITS) - 1)


// Valors minims
//
#define MIN_SPEED             10
#define MIN_ACCELERATION      10
#define MIN_JERK              100

// Valors maxims
//
#define MAX_SPEED             1500000
#define MAX_ACCELERATION      1500000
#define MAX_JERK              1500000

// Valors per defecte
//
#define DEF_SPEED             150
#define DEF_ACCELERATION      300
#define DEF_JERK              100


using namespace eos;
using namespace axis;

static unsigned ledCount = 0;


// Macros per facilitar els calculs d'esponencials i arrels
//
#define exp2(a)     ((a) * (a))             
#define exp3(a)     ((a) * (a) * (a))       
#define exp4(a)     ((a) * (a) * (a) * (a)) 
#define rt2(a)      sqrtl(a)                
#define rt3(a)      cbrtl(a)                
#ifndef max
#define max(a, b)   (((a) > (b)) ? (a) : (b))
#endif
#ifndef min
#define min(a, b)   (((a) < (b)) ? (a) : (b))
#endif


/// ----------------------------------------------------------------------
/// \brief Constructor.
/// \param numAxis: Numero d'eixos.
/// \param motors: Controladors dels motors de cada eix.
///
Motion::Motion(
    unsigned _numAxis,
    Motor *_motors[]):
    numAxis(_numAxis) {
    
    for (unsigned i = 0; i < numAxis; i++) {
        motors[i] = _motors[i];
        axisPos[i] = 0;
        axisMax[i] = INT_MAX;
        axisMin[i] = INT_MIN;
    }
    
    jerk = DEF_JERK;
    maxAcceleration = DEF_ACCELERATION;
    maxSpeed = DEF_SPEED;
    busy = false;

    timerInitialize();
}


/// ----------------------------------------------------------------------
/// \brief Destructor.
///
Motion::~Motion() {
}


/// ----------------------------------------------------------------------
/// \brief Assigna la velocitat maxima.
/// \param speed: El nou valor.
///
void Motion::setMaxSpeed(
    unsigned speed) {

    // Si es ocupat no fa res
    //
    if (busy) 
        return;
      
    // Ajusta limits
    //
    if (speed < MIN_SPEED) 
        speed = MIN_SPEED;        
    else if (speed > MAX_SPEED)
        speed = MAX_SPEED;
        
    // Canvia la velocitat maxima
    //
    this->maxSpeed = speed;
}


/// ----------------------------------------------------------------------
/// \brief Assigna l'aceleracio maxima.
/// \param acceleration: El nou valor.
///
void Motion::setMaxAcceleration(
    unsigned acceleration) {

    // Si es ocupat no fa res
    //
    if (busy) 
        return;
    
    // Ajusta els limits
    //
    if (acceleration < MIN_ACCELERATION) 
        acceleration = MIN_ACCELERATION;
    else if (acceleration > MAX_ACCELERATION)
        acceleration = MAX_ACCELERATION;

    // Canvia l'acceleracio maxima
    //
    this->maxAcceleration = acceleration;
}


/// ----------------------------------------------------------------------
/// \brief Asigna el impuls.
/// \param jerk: El valor del impuls.
///
void Motion::setJerk(
    unsigned jerk) {

    // Si es ocupat no fa res
    //
    if (busy) 
        return;
      
    // Ajusta els limits
    //
    if (jerk < MIN_JERK) 
        jerk = MIN_JERK;
    else if (jerk > MAX_JERK)
        jerk = MAX_JERK;

    // Canvia el impuls
    //
    this->jerk = jerk;
}


void Motion::setMaxPosition(
    int position[]) {
    
    memcpy(axisMax, position, sizeof(axisMax[0] * numAxis));
}


void Motion::setMinPosition(
    int position[]) {
    
    memcpy(axisMin, position, sizeof(axisMin[0] * numAxis));
}


/// ----------------------------------------------------------------------
/// \bried Asigna la posicio actual com la posicio HOME.
///
void Motion::setHome() {
    
    memset(axisPos, 0, sizeof(axisPos[0]) * numAxis);
}


/// ----------------------------------------------------------------------
/// \brief Obte la posicio dels eixos.
/// \param axis: Identificador del eix.
/// \return Posicio del eix
///
int Motion::getAxis(
    unsigned axis) const {
    
    int position = -1;

    if (axis <= numAxis) {
        Task::enterCriticalSection();
        position = axisPos[axis];
        Task::exitCriticalSection();
    }
    
    return position;
}


/// ----------------------------------------------------------------------
/// \brief Realitza un moviment absolut a la posicio especificada
/// \param position: Posicio
///
void Motion::doMoveAbs(
    int position[]) {

    // Si es ocupat no fa res
    //
    if (busy) 
        return;

    // Ajusta els limits
    //
    for (unsigned i = 0; i < numAxis; i++) {
        if (position[i] < axisMin[i]) 
            position[i] = axisMin[i];
        else if (position[i] > axisMax[i])
            position[i] = axisMax[i];
    }

    // Comprova si cal moure quelcom
    //
    bool canMove = false;
    for (unsigned i = 0; (i < numAxis) && !canMove; i++) {
        if (position[i] != axisPos[i])
            canMove = true;
    }

    // Si cal moure, ho fa
    //
    if (canMove) 
        start(position);
}


/// ----------------------------------------------------------------------
/// \brief Realitza un moviment relatiu a la posicio actual
/// \param delta: Increment de posicio
///
void Motion::doMoveRel(
    int delta[]) {

    // Pasa a coordinades absolutes
    //
    int position[MAX_AXIS];
    for (unsigned i = 0; i < numAxis; i++)
        position[i] = axisPos[i] + delta[i];

    doMoveAbs(position);
}


/// ----------------------------------------------------------------------
/// \brief Realitza un moviment absolut en el eix especificat.
/// \param axis: Eix a moure
/// \param position: Nova posicio
///
void Motion::doMoveAbsAxis(
    unsigned axis,
    int position) {

    // Comprova si els parametres son valids
    //
    if (axis >= numAxis)
        return;

    // Calcula el moviment a realitzar
    //
    int p[MAX_AXIS];
    for (unsigned i = 0; i < numAxis; i++)
        if (i == axis)
            p[i] = position;
        else
            p[i] = axisPos[i];

    // Realitza el moviment
    //
    doMoveAbs(p);
}


/// ----------------------------------------------------------------------
/// \brief Realitza un moviment a la posicio HOME
///
void Motion::doMoveHome() {
    
    int position[MAX_AXIS];
    
    memset(position, 0, sizeof(position));
    doMoveAbs(position);
}


/// ---------------------------------------------------------------------
/// \brief Atura el moviment inmediatament
///
void Motion::doStop() {

    stop();
}


/// ---------------------------------------------------------------------
/// \brief Initialitza el temporitzador
///
void Motion::timerInitialize() {

    halTMRInitializeTimer(MOTION_TIMER_ID, HAL_TMR_MODE16, HAL_TMR_PS32, 
        25, timerInterruptCallback, this);
}


/// ----------------------------------------------------------------------
/// \brief Activa el temporitzador i comença a disparar interrupcions
///
void Motion::timerStart() {
    
    halTMRStartTimer(MOTION_TIMER_ID);
}


/// ----------------------------------------------------------------------
/// \brief Para el temporitzador
///
void Motion::timerStop() {

    halTMRStopTimer(MOTION_TIMER_ID);
}


/// ----------------------------------------------------------------------
/// \brief Procesa la interrupcio del temporitzador.
/// \param timer: Identificador del temporitzador.
/// \param param: Parametre. En aquest cas el punter this.
///
void Motion::timerInterruptCallback(
    uint8_t timer, 
    void *param) {
    
    Motion *motion = (Motion*) param;
    motion->loop();

    ledCount++;
    if (ledCount == 50000) {
        invLED1();
        ledCount = 0;
    }
}


/// ----------------------------------------------------------------------
/// \brief Inicialitzacio del moviment.
/// \param position: Coordinades absolutes del desti del moviment.
///
void Motion::start(
    int position[]) {

    // Posa el controlador en modus ocupat
    //
    busy = true;

    // Realitza les operacions de calcul de trajectoria
    //
    int delta[MAX_AXIS];
    for (unsigned i = 0; i < numAxis; i++) {
        int d = position[i] - axisPos[i];
        if (d < 0) {
            d = -d;
            inc[i] = -1;
            motors[i]->setDirection(MotorDirection::backward);
        }
        else {
            inc[i] = 1;
            motors[i]->setDirection(MotorDirection::forward);
        }
        delta[i] = d;
    }

    int deltaMax = INT_MIN;
    for (unsigned i = 0; i < numAxis; i++) {
        if (delta[i] > deltaMax) {
            deltaMax = delta[i];
            mainAxis = i;
        }
    }
    for (unsigned i = 0; i < numAxis; i++) {
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
/// \brief Finalitza el moviment inmediatament.
///
void Motion::stop() {
    
    timerStop();
    busy = false;
}


/// ----------------------------------------------------------------------
/// \brief Executa un pas del moviment.
///
void Motion::loop() {

    bool doStep = false;
    
    for (unsigned i = 0; i < numAxis; i++)
        motors[i]->setStep(MotorStep::idle);

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
        for (unsigned i = 0; i < numAxis; i++) {
            if (i != ma) {
                if (error[i] > 0) {
                    error[i] -= ddelta[ma];
                    axisPos[i] += inc[i];
                    motors[i]->setStep(MotorStep::active);
                }
                error[i] += ddelta[i];
            }
        }
        axisPos[ma] += inc[ma];        
        motors[ma]->setStep(MotorStep::active);

        // Incrementa el contador de pasos
        //
        stepCounter += 1;
        
        // Si ha acabat, finalitza el moviment
        //
        if (stepCounter == stepNumber) 
            stop();
    }
}
