#include "eos.h"
#include "eosAssert.h"
#include "HAL/halSYS.h"
#include "HAL/halTMR.h"
#include "HAL/halINT.h"
#include "System/eosMath.h"
#include "System/Core/eosTask.h"

#include "axisP2PMotion.h"
#include "axisMotor.h"

#include "limits.h"
#include "math.h"


#define HZ                        100000.0L

#define FRACTIONAL_BITS           48
#define FRACTIONAL_MASK           (((uint64_t)1 << FRACTIONAL_BITS) - 1)

#define PULSE_WIDTH               1


// Valors minims
//
#define MOTION_MIN_SPEED          10
#define MOTION_MIN_ACCELERATION   10
#define MOTION_MIN_JERK           1000

// Valors maxims
//
#define MOTION_MAX_SPEED          (    32 * 1000)
#define MOTION_MAX_ACCELERATION   ( 25000 * 1000)
#define MOTION_MAX_JERK           ( 50000 * 1000)

// Valors per defecte
//
#define MOTION_DEF_HOMING_SPEED   (     5 * 1000)
#define MOTION_DEF_SPEED          (    24 * 1000)
#define MOTION_DEF_ACCELERATION   (  6000 * 1000)
#define MOTION_DEF_JERK           (  2000 * 1000)


using namespace eos;
using namespace axis;


// Macros per facilitar els calculs de potencies i arrels
//
#define pw2(a)     ((a) * (a))
#define pw3(a)     ((a) * (a) * (a))
#define pw4(a)     ((a) * (a) * (a) * (a))
#define rt2(a)     sqrtl(a)
#define rt3(a)     cbrtl(a)


/// ----------------------------------------------------------------------
/// \brief    Constructor.
/// \param    cfg: Parametres de configuracio.
///
P2PMotion::P2PMotion(
    const Configuration& cfg):

	numAxis(cfg.numAxis),
	hTimer(cfg.hTimer),
    busy(false),
    finished() {

    for (int i = 0; i < cfg.numAxis; i++) {
    	axisData[i].motor = cfg.motors[i];
        axisData[i].position = 0;
        axisData[i].maxPosition = INT_MAX;
        axisData[i].minPosition = INT_MIN;
    }

    jerk = Math::min(MOTION_DEF_JERK, MOTION_MAX_JERK);
    maxAcceleration = Math::min(MOTION_DEF_ACCELERATION, MOTION_MAX_ACCELERATION);
    maxSpeed = Math::min(MOTION_DEF_SPEED, MOTION_MAX_SPEED);
    homingSpeed = MOTION_DEF_HOMING_SPEED;

    // Allivera el semafor
    //
    finished.release();
}


/// ----------------------------------------------------------------------
/// \brief    Destructor.
///
P2PMotion::~P2PMotion() {
}


/// ----------------------------------------------------------------------
/// \brief    Assigna la velocitat maxima.
/// \param    speed: El nou valor.
///
void P2PMotion::setMaxSpeed(
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
    maxSpeed = speed;
}


/// ----------------------------------------------------------------------
/// \brief    Assigna l'aceleracio maxima.
/// \param    acceleration: El nou valor.
///
void P2PMotion::setMaxAcceleration(
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
    maxAcceleration = acceleration;
}


/// ----------------------------------------------------------------------
/// \brief    Asigna el impuls.
/// \param    jerk: El valor del impuls.
///
void P2PMotion::setJerk(
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
void P2PMotion::setMaxPosition(
    const Vector& position) {

	for (int i = 0; i < numAxis; i++)
		axisData[i].maxPosition = position[i];
}


/// ----------------------------------------------------------------------
/// \brief    Asigna el limit inferior.
///
void P2PMotion::setMinPosition(
    const Vector& position) {

	for (int i = 0; i < numAxis; i++)
		axisData[i].minPosition = position[i];
}


/// ----------------------------------------------------------------------
/// \bried    Asigna la posicio actual com la posicio HOME.
///
void P2PMotion::setHome() {

	for (int i = 0; i < numAxis; i++)
		axisData[i].position = 0;
}


/// ----------------------------------------------------------------------
/// \brief    Obte la posicio dels eixos.
/// \param    axis: Identificador del eix.
/// \return   Posicio del eix
///
int P2PMotion::getAxis(
    int axis) const {

	eosAssert(axis >= 0);

    int position = -1;

    if (axis <= numAxis) {
        Task::enterCriticalSection();
        position = axisData[axis].position;
        Task::exitCriticalSection();
    }

    return position;
}


/// ----------------------------------------------------------------------
/// \brief    Obte la posicio dels eixos.
/// \return   La posicio.
///
P2PMotion::Vector P2PMotion::getPosition() const {

    Vector position;
    Task::enterCriticalSection();
    for (int i = 0; i < numAxis; i++)
    	position[i] = axisData[i].position;
    Task::enterCriticalSection();
    return position;
}


/// ----------------------------------------------------------------------
/// \brief    Realitza un moviment absolut a la posicio especificada
/// \param    position: Posicio
///
void P2PMotion::doMoveAbs(
    const Vector& position) {

    // Si es ocupat no fa res
    //
    if (busy)
        return;

    // Ajusta els limits
    //
    Vector newPosition(position);
    for (int i = 0; i < numAxis; i++) {
        if (position[i] < axisData[i].minPosition)
            newPosition[i] = axisData[i].minPosition;
        else if (position[i] > axisData[i].maxPosition)
            newPosition[i] = axisData[i].maxPosition;
    }

    // Si cal moure, ho fa
    //
    for (int i = 0; i < numAxis; i++) {
        if (newPosition[i] != axisData[i].position) {
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
void P2PMotion::doMoveAbs(
    int axis,
    int position) {

    // Comprova si els parametres son valids
    //
    if (axis >= numAxis)
        return;

    // Calcula el moviment a realitzar
    //
    Vector newPosition;
    for (int i = 0; i < numAxis; i++)
        if (i == axis)
            newPosition[i] = position;
        else
            newPosition[i] = axisData[i].position;

    // Realitza el moviment
    //
    doMoveAbs(newPosition);
}


/// ----------------------------------------------------------------------
/// \brief    Realitza un moviment relatiu a la posicio actual
/// \param    delta: Increment de posicio
///
void P2PMotion::doMoveRel(
    const Vector& delta) {

    Vector position;
    for (int i = 0; i < numAxis; i++)
        position[i] = axisData[i].position + delta[i];
    doMoveAbs(position);
}


/// ----------------------------------------------------------------------
/// \brief    Realitza un moviment relatiu a la posicio actual.
/// \param    axis: L'eix a moure.
/// \param    delte: Distancia.
///
void P2PMotion::doMoveRel(
    int axis,
    int delta) {

    // Comprova si els parametres son valids
    //
    if (axis >= numAxis)
        return;

    // Calcula el moviment a realitzar
    //
    Vector newDelta;
    for (int i = 0; i < numAxis; i++)
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
void P2PMotion::doMoveHome() {

    int v[] = {0, 0, 0};
    doMoveAbs(v);
}


/// ---------------------------------------------------------------------
/// \brief    Atura el moviment inmediatament
///
void P2PMotion::doStop() {

    stop();

    finished.release();
}


/// ----------------------------------------------------------------------
/// \brief    Operacio homing.
///
void P2PMotion::doHoming() {

	int oldMaxSpeed = maxSpeed;
	maxSpeed = homingSpeed;

	// Busca el limit inferior de cada eix
	//
	for (int i = 0; i < numAxis; i++) {

		// Si ja esta en home, mou a la dreta.
		//
		if (axisData[i].motor->getHome()) {
			doMoveRel(i, axisData[i].motor->getStepsByRev());   // Mou una volta a la dreta
			waitForFinish(unsigned(-1));
		}

		// Busca el limit per la dreta
		//
		doMoveRel(i, -1 * axisData[i].motor->getStepsByRev() * 2); // 10 voltes a l'esquerra
		waitForFinish(unsigned(-1));

		// Busca un posicio que no detecti
		//
		doMoveRel(i, axisData[i].motor->getStepsByRev() / 2);   // Mou mitja volta a la dreta
		waitForFinish(unsigned(-1));

		// Asigna la posicio zero
		//
		axisData[i].position = 0;
	}

	maxSpeed = oldMaxSpeed;
}


/// ----------------------------------------------------------------------
/// \brief    Espera que finalitzi el moviment actual.
/// \param    blockTime: Temps de bloqueig maxim.
/// \return   True si ha finalitzat, false si ha acabat el temps de
///           bloqueig sense finalitzar.
///
bool P2PMotion::waitForFinish(
    unsigned blockTime) {

    return finished.wait(blockTime);
}


/// ----------------------------------------------------------------------
/// \brief    Activa el temporitzador i comença a disparar interrupcions
///
void P2PMotion::timerStart() {

	halTMRClearInterruptFlags(hTimer, HAL_TMR_EVENT_UPDATE);
	halTMREnableInterrupts(hTimer, HAL_TMR_EVENT_UPDATE);
    halTMRSetInterruptFunction(hTimer, tmrInterruptFunction, this);

    halTMRStartTimer(hTimer);
}


/// ----------------------------------------------------------------------
/// \brief    Para el temporitzador
///
void P2PMotion::timerStop() {

    halTMRStopTimer(hTimer);

	halTMRDisableInterrupts(hTimer, HAL_TMR_EVENT_ALL);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa la interrupcio del temporitzador.
/// \param    handler: Handler del temporitzador.
/// \param    param: Handler del servei.
///
void P2PMotion::tmrInterruptFunction(
    halTMRHandler handler,
    void* param,
	uint32_t event) {

	P2PMotion* motion = static_cast<P2PMotion*>(param);

	if (event == HAL_TMR_EVENT_UPDATE) {
		motion->loop();
		if (!motion->busy)
			motion->finished.releaseISR();
	}
}


/// ----------------------------------------------------------------------
/// \brief    Prepara el moviment.
/// \param    position: Posicio final de la linia.
///
void P2PMotion::motionStart(
	const Vector& position) {

    int deltaMax = INT_MIN;

    for (int i = 0; i < numAxis; i++) {

        int delta = position[i] - axisData[i].position;
        if (delta < 0) {
            delta = -delta;
            motionData[i].inc = -1;
            axisData[i].motor->setDirection(Motor::Direction::backward);
        }
        else if (delta > 0) {
            motionData[i].inc = 1;
            axisData[i].motor->setDirection(Motor::Direction::forward);
        }
        else
            motionData[i].inc = 0;

        motionData[i].ddelta = delta * 2;

        if (delta > deltaMax) {
            deltaMax = delta;
            mainAxis = i;
        }
    }

    for (int i = 0; i < numAxis; i++)
        motionData[i].error = motionData[i].ddelta - deltaMax;

    stepCounter = 0;
    stepNumber = deltaMax;
}


/// ----------------------------------------------------------------------
/// \brief    Avança un pas del moviment.
/// \return   True si ha arribat al final, o al limit.
//
bool P2PMotion::motionStep() {

	// Comprova limits
	//
	for (int i = 0; i < numAxis; i++) {

		// Si va a la dreta i detecta home finalitza el moviment
		//
		if ((motionData[i].inc == -1) && axisData[i].motor->getHome())
			return true;

		// Si va a l'esquerra i detecta limit, finalitza el moviment
		//
		else if ((motionData[i].inc == 1) && axisData[i].motor->getLimit())
			return true;
	}

	// Realitza un pas del moviment
	//
	int ma = mainAxis;
    for (int i = 0; i < numAxis; i++) {
        if (i != ma) {
            if (motionData[i].error > 0) {
                motionData[i].error -= motionData[ma].ddelta;
                axisData[i].position += motionData[i].inc;

                axisData[i].motor->setStep(Motor::Step::active);
            }
            motionData[i].error += motionData[i].ddelta;
        }
    }
    axisData[ma].position += motionData[ma].inc;

    axisData[ma].motor->setStep(Motor::Step::active);

    stepCounter++;

    // Indica si ha finalitzat el moviment
    //
    return stepCounter == stepNumber;
}


/// ----------------------------------------------------------------------
/// \brief    Calcula la velocitat maxima efectiva per la posicio final
///           del moviment.
/// \param    position: Posicio final del moviment.
/// \return   La velocitat maxima efectiva, que no superara mai la velocitat
///           maxima del motor mes lent.
///
int P2PMotion::computeMaxSpeed(
	const Vector& position) const {

    int speed = maxSpeed;

    for (int i = 0; i < numAxis; i++) {
    	if (position[i] != axisData[i].position) {
    		int motorMaxSpeed = axisData[i].motor->getMaxSpeed();
    		if (maxSpeed > motorMaxSpeed)
    			speed = motorMaxSpeed;
    	}
    }

    return speed;
}


/// ----------------------------------------------------------------------
/// \brief    Calcula l'acceleracio maxima efectiva per la posicio final
///           del moviment.
/// \param    position: Posicio final del moviment.
/// \return   L'acceleracio maxima efectiva, que no superara mai la
///           del motor mes lent.
///
int P2PMotion::computeMaxAcceleration(
	const Vector& position) const {

    int acceleration = maxAcceleration;

    for (int i = 0; i < numAxis; i++) {
    	if (position[i] != axisData[i].position) {
    		int motorMaxAcceleration = axisData[i].motor->getMaxAcceleration();
    		if (maxAcceleration > motorMaxAcceleration)
    			acceleration = motorMaxAcceleration;
    	}
    }

    return acceleration;
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitzacio del moviment.
/// \param    position: Coordinades absolutes del desti del moviment.
/// \remarks  Es calcula suposant que la velocitat inicial i final es 0.
///
void P2PMotion::start(
    const Vector& position) {

    // Posa el controlador en modus ocupat
    //
    busy = true;

    // Realitza les operacions de calcul de trajectoria
    //
    motionStart(position);
    widthCounter = PULSE_WIDTH;

    // Realitza les operacions de calcul del perfil de velocitat. Interesa
    // calcular el temps dels tram de les fases I i II (T1 i T2 respectivament),
    // el reste s'interpolen per simetries. El temps, en realitat, es el nombre
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

    // Calcula els temps de vol T1 i T2
    //
    T1 = acceleration / jrk;
    V1 = 0.5L * jrk * pw2(T1);

    if (V1 > halfSpeed) {

        T1 = rt2(speed / jrk);
        V1 = halfSpeed;

        T2 = 0;
        V2 = V1;

        T3 = T1;
        V3 = speed;

        S1 = (jrk * pw3(T1)) / 6.0L;
        S2 = 0.0L;
        S3 = (V2 * T3) + (0.5L * jrk * T1 * pw2(T3)) - (jrk * pw3(T3) / 6.0L);
    }
    else {

        T2 = (speed - (2.0L * V1)) / acceleration;
        V2 = V1 + (acceleration * T2);

        T3 = T1;
        V3 = speed;

        S1 = jrk * pw3(T1) / 6.0L;
        S2 = (V1 * T2) + (0.5L * acceleration * pw2(T2));
        S3 = (V2 * T3) + (0.5L * acceleration * pw2(T3)) - (jrk * pw3(T3) / 6.0L);
    }

    if ((S1 + S2 + S3) > halfDistance) {
        if ((S1 + S3) > halfDistance) {

            T1 = rt3(halfDistance / jrk);
            V1 = 0.5L * jrk * pw2(T1);

            T2 = 0.0L;
            V2 = V1;

            T3 = T1;
        }
        else {

            T1 = acceleration / jrk;
            V1 = 0.5L * jrk * pw2(T1);

            T2 = (1.0L / (2.0L * jrk * T1)) *
                 (-3.0L * jrk * pw2(T1) + rt2(pw2(jrk) * pw4(T1) + 4.0L * jrk * T1 * distance));
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
    curJerk = (int64_t) (jrk * 281474976710656.0L / pw3(HZ));
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
void P2PMotion::stop() {

    // Desactiva el temporitzador, i deixa de generar interrupcions.
    //
    timerStop();

    // Posa els pins de control dels motors en estat desactivat.
    //
    for (int i = 0; i < numAxis; i++)
        axisData[i].motor->setStep(Motor::Step::idle);

    // Indica que el controlador esta lliure per un altre moviment.
    //
    busy = false;
}


/// ----------------------------------------------------------------------
/// \brief    Executa un pas del moviment.
///
void P2PMotion::loop() {

    bool doStep = false;

    if (!--widthCounter) {
		for (int i = 0; i < numAxis; i++)
			axisData[i].motor->setStep(Motor::Step::idle);
		widthCounter = PULSE_WIDTH;
    }

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

            // Com la parada es simetrica, calcula els pasos de
            // la seccio central de la corva
            //
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
        	// Per posibles errors de arrodoniment, fa tots els passos que
        	// resten, independentment del temps de vol calculat.
        	//
            if (stepCounter < stepNumber) {

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

    // Realitza un pas de la trajectoria
    //
    if (doStep) {
    	if (motionStep())
            stop();
    }
}


#if 0


#define CONTROL_JERK_pos     0
#define CONTROL_JERK_bits    0b11
#define CONTROL_JERK_mask    (CONTROL_JERK_bits << CONTROL_JERK_pos)

#define CONTROL_JERK_CONST   (0 << CONTROL_JERK_pos)
#define CONTROL_JERK_INC	 (1 << CONTROL_JERK_pos)
#define CONTROL_JERK_DEC	 (2 << CONTROL_JERK_pos)

#define CONTROL_ACCEL_pos    2
#define CONTROL_ACCEL_bits   0b11
#define CONTROL_ACCEL_mask   (CONTROL_ACCEL_bits << CONTROL_ACCEL_pos)

#define CONTROL_ACCEL_CONST  (0 << CONTROL_ACCEL_pos)
#define CONTROL_ACCEL_INC    (1 << CONTROL_ACCEL_pos)
#define CONTROL_ACCEL_DEC    (2 << CONTROL_ACCEL_pos)

#define CONTROL_SPEED_pos    4
#define CONTROL_SPEED_bits   0b11
#define CONTROL_SPEED_mask   (CONTROL_SPEED_bits << CONTROL_SPEED_pos)

#define CONTROL_SPEED_CONST  (0 << CONTROL_SPEED_pos)
#define CONTROL_SPEED_INC    (1 << CONTROL_SPEED_pos)
#define CONTROL_SPEED_DEC    (2 << CONTROL_SPEED_pos)

#define CONTROL_MODE_pos     6
#define CONTROL_MODE_bits    0b1
#define CONTROL_MODE_mask    (CONTROL_MODE_bits << CONTROL_MODE_pos)

#define CONTROL_MODE_TIME    (0 << CONTROL_MODE_pos)
#define CONTROL_MODE_DIST    (1 << CONTROL_MODE_pos)

typedef struct {
	uint32_t control;
	int64_t limit;
} Phase;

Phase phaseTbl[];

void P2PMotion::loop() {

	bool doStep = false;

	uint32_t count = 0;

	uint64_t limit = phases[phase].limit;
	uint32_t control = phases[phase].control;

	if (count < limit) {

		// Actualitza l'acceleracio
		//
		switch (control & CONTROL_ACCEL_mask) {
			case CONTROL_ACCEL_INC:
				curAcceleration += jerk;
				break;

			case CONTROL_ACCEL_DEC:
				curAcceleration -= jerk;
				break;
		}

		// Actualitza la velocitat
		//
		switch (constrol & CONTROL_SPEED_mask) {
			case CONTROL_SPEED_INC:
				curSpeed += curAcceleration;
				break;

			case CONTROL_SPEED_DEC:
				curSpeed -= curAcceleration;
				break;
		}

		// Actualitza la posicio
		//
		curPosition += curSpeed;

		// Genera un pas, si cal
		//
		if (curPosition & ~FRACTIONAL_MASK) {
			curPosition &= FRACTIONAL_MASK;
			doStep = true;

			// Si conta distancia, incrementa el contador
			//
			if ((control & CONTROL_MODE_mask) == CONTROL_MODE_DIST)
				count++;
		}

		// Si conta temps, incrementa el contador.
		//
		if ((control & CONTROL_MODE_mask) == PHASE_CONTROL_TIME)
			count++;
	}

	if (count >= limit) {
		// Canvi de fase i de limits
		//
		phase += 1;
		limit = 10000;
		count = 0;
	}
}
#endif


#if 0


void loop() {

	// Incrementa la posicio
	//
	curAcceleration += jerk;
	curSpeed += curAcceleration;
	curPosition += curSpeed;

	// Genera un pas, si cal
	//
	if (curPosition & ~FRACTIONAL_MASK) {
		curPosition &= FRACTIONAL_MASK;

		// Afegeix un pas als motors
		//

		// Si conta distancia, incrementa el contador de distancia
		//
		if ((control & CONTROL_MODE_mask) == CONTROL_MODE_DIST)
			count++;
	}

	// Si conta temps, incrementa el contador de temps.
	//
	if ((control & CONTROL_MODE_mask) == PHASE_CONTROL_TIME)
		count++;
}
#endif
