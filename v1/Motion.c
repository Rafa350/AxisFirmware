#include "System/eosMemory.h"
#include "Motion.h"
#include "HardwareProfile.h"
#include "limits.h"
#include "peripheral/int/plib_int.h"
#include "peripheral/tmr/plib_tmr.h"
#include "sys/attribs.h"
#include "Math.h"


#define MOTION_TIMER_ID           TMR_ID_2
#define MOTION_TIMER_INT_VECTOR   INT_VECTOR_T2
#define MOTION_TIMER_INT_SOURCE   INT_SOURCE_TIMER_2
#define MOTION_TIMER_CORE_VECTOR  _TIMER_2_VECTOR

#define HZ                   100000.0

#define MIN_SPEED            10
#define MIN_ACCELERATION     10
#define MIN_JERK             100

#define MAX_SPEED            16000
#define MAX_ACCELERATION     500000
#define MAX_JERK             50000

#define DEF_SPEED            15000
#define DEF_ACCELERATION     300000
#define DEF_JERK             20000


typedef struct __axMotion {
    unsigned numAxis;                  // -Mumero d'eixos
    axMotorHandle hMotor[MAX_AXIS];    // -Handlers dels motors dels eixos
    int axisMax[MAX_AXIS];             // -Valor maxim de cada eix
    int axisPos[MAX_AXIS];             // -Posicio de cada eix
    unsigned maxSpeed;                 // -Velocitat maxima
    unsigned maxAcceleration;          // -Acceleracio maxima
    unsigned jerk;                     // -Impuls
    BOOL isBusy;                       // -Ocupat en un moviment
    axMotionResultCode resultCode;     // -Resultat de l'ultima operacio

    // Control del perfil de velocitat
    //
    UINT8 phase;                       // -Fase del perfil en la que es troba
    INT64 distSAccel;                  // -Distancia d'acceleracio
    INT64 distSConst;                  // -Distancia de manteniment
    INT64 distSDecel;                  // -Distancia de deceleracio
    INT64 stepSFlat;                   // -Pasos de velocitat maxima
    INT64 count;                       // -Contador de distancia/pasos
    INT64 curJerk;                     // -Impuls actual
    INT64 curAcceleration;             // -Acceleracio actual
    INT64 curSpeed;                    // -Velocitat actual
    INT64 curPosition;                 // -Posicio actual

    // Control de la trajectoria
    //
    int stepNumber;                    // -Numero de pasos a realitzar
    int stepCounter;                   // -Contador de pasos realitzats
    unsigned mainAxis;                 // -Eix principal (El mes llarg)
    int error[MAX_AXIS];               // -Error acumulat
    int ddelta[MAX_AXIS];              // -Deltas * 2
    int inc[MAX_AXIS];                 // -Increments dels eixos per cada pas
} axMotion;

static axMotionHandle hActiveMotion = NULL; // Per accedir a Motion des de ISR


// Macros per facilitar els calculs
//
#define exp2(a)     ((a) * (a))         // Obte el quadrat d'un valor
#define exp3(a)     ((a) * (a) * (a))   // Obte el cub d'un valor
#ifndef max
#define max(a, b)   (((a) > (b)) ? (a) : (b))
#endif
#ifndef min
#define min(a, b)   (((a) < (b)) ? (a) : (b))
#endif


static void timerInitialize(void);
static void timerStart(void);
static void timerStop(void);
static void start(axMotionHandle hMotion, int position[]);
static void loop(axMotionHandle hMotion);


/*************************************************************************
 *
 *       Inicialitza el driver de moviment
 *
 *       Funcio:
 *           axMotionHandle axMotionInitialize(
 *               axMotionParams *params)
 *
 *       Entrada:
 *           params: Parametres d'inicialitzacio
 *
 *       Retorn:
 *           El handler del driver. NULL en cas d'error
 *
 *************************************************************************/

axMotionHandle axMotionInitialize(
    axMotionParams *params) {

    // Verifica que els parametres siguin correctes
    //
    if (params == NULL)
        return NULL;
    if (params->numAxis > MAX_AXIS)
        return NULL;

    axMotionHandle hMotion = (axMotionHandle) eosAlloc(sizeof(axMotion));
    if (!hMotion)
        return NULL;

    unsigned i;
    unsigned numAxis = params->numAxis;
    for (i = 0; i < numAxis; i++) {
        hMotion->hMotor[i] = params->hMotor[i];
        hMotion->axisPos[i] = 0;
        hMotion->axisMax[i] = 10000000;
    }
    hMotion->numAxis = numAxis;
    hMotion->jerk = DEF_JERK;
    hMotion->maxAcceleration = DEF_ACCELERATION;
    hMotion->maxSpeed = DEF_SPEED;
    hMotion->isBusy = false;
    hMotion->resultCode = axMotionSuccess;

    timerInitialize();

    return hMotion;
}


/*************************************************************************
 *
 *       Retorna el resultat de l'ultima operacio
 *
 *       Funcio:
 *           axMotionResultCode axMotionGetResult(
 *               axMotionHandle hMotion)
 *
 *       Entrada:
 *           hMotion: El handler
 *
 *       Retorn:
 *           El resultat de l'ultima operacio
 *
 *************************************************************************/

axMotionResultCode axMotionGetResult(
    axMotionHandle hMotion) {

    return hMotion->resultCode;
}


/*************************************************************************
 *
 *       Selecciona la velocitat maxima
 *
 *       Funcio:
 *           bool axMotionSetMaxSpeed(
 *               axMotionHandle hMotion,
 *               unsigned maxSpeed)
 *
 *       Entrada:
 *           hMotion : El handler
 *           maxSpeed: Velocitat maxima
 *
 *       Retorn:
 *           True si tot es correcte. False en cas contrari
 *
 *************************************************************************/

bool axMotionSetMaxSpeed(
    axMotionHandle hMotion,
    unsigned maxSpeed) {

    // Comprova que els parametres siguin correctes
    //
    if ((maxSpeed < MIN_SPEED) || (maxSpeed > MAX_SPEED)) {
        hMotion->resultCode = axMotionErrorParamOutOfRange;
        return false;
    }

    // Si es ocupat, no fa res
    //
    if (hMotion->isBusy) {
        hMotion->resultCode = axMotionBusy;
        return false;
    }

    hMotion->maxSpeed = maxSpeed;
    hMotion->resultCode = axMotionSuccess;

    return true;
}


/*************************************************************************
 *
 *       Selecciona l'acceleracio maxima
 *
 *       Funcio:
 *           bool axMotionSetMaxAcceleration(
 *               axMotionHandle hMotion,
 *               unsigned maxAcceleration)
 *
 *       Entrada:
 *           hMotion        : El handler
 *           maxAcceleration: Acceleracio maxima
 *
 *       Retorn:
 *           True si tot es correcte, false en fas contrari
 *
 *************************************************************************/

bool axMotionSetMaxAcceleration(
    axMotionHandle hMotion,
    unsigned maxAcceleration) {

    // Si els parametres son incorrectes, no fa res
    //
    if ((maxAcceleration < MIN_ACCELERATION) || (maxAcceleration > MAX_ACCELERATION)) {
        hMotion->resultCode = axMotionErrorParamOutOfRange;
        return false;
    }

    // Si es ocupat, no fa res
    //
    if (hMotion->isBusy) {
        hMotion->resultCode = axMotionBusy;
        return false;
    }

    hMotion->maxAcceleration = maxAcceleration;
    hMotion->resultCode = axMotionSuccess;

    return true;
}


/*************************************************************************
 *
 *       Selecciona el impuls
 *
 *       Funcio:
 *           bool axMotionSetJerk(
 *               axMotionHandle hMotion,
 *               unsigned jerk)
 *
 *       Entrada:
 *           hMotion: El handler
 *           jerk   : Impuls
 *
 *       Retorn:
 *           True si tot es correcte, false en cas contrari
 *
 *************************************************************************/

bool axMotionSetJerk(
    axMotionHandle hMotion,
    unsigned jerk) {

    // Comprova que els parametres siguin correctes
    //
    if ((jerk < MIN_JERK) || (jerk > MAX_JERK)) {
        hMotion->resultCode = axMotionErrorParamOutOfRange;
        return false;
    }

    // Si es ocupat, no fa res
    //
    if (hMotion->isBusy) {
        hMotion->resultCode = axMotionBusy;
        return false;
    }

    hMotion->jerk = min(max(MIN_JERK, jerk), MAX_JERK);
    hMotion->resultCode = axMotionSuccess;

    return true;
}


/*************************************************************************
 *
 *       Obte el valor del indicador 'IsBusy'
 *
 *       Funcio:
 *           bool axMotionIsBusy(
 *               axMotionHandle hMotion)
 *
 *       Entrada:
 *           hMotion: El handle
 * 
 *       Retorn:
 *           El resultat de l'operacio
 *
 *************************************************************************/

bool axMotionIsBusy(
    axMotionHandle hMotion) {

    return hMotion->isBusy || hActiveMotion;
}


/*************************************************************************
 *
 *       Obte la posicio dels eixos
 *
 *       Funcio:
 *           void axMotionGetAxis(
 *               axMotionHandle hMotion,
 *               unsigned axis)
 *
 *       Entrada:
 *           hMotion: Handle
 *           axis   : Identificador del eix
 *
 *       Retorn:
 *           Posicio del eix
 *
 *************************************************************************/

int axMotionGetAxis(
    axMotionHandle hMotion,
    unsigned axis) {

    // Si els parametres incorrectes, no fa res
    //
    if (axis >= hMotion->numAxis) {
        hMotion->resultCode = axMotionErrorParamOutOfRange;
        return 0;
    }

    bool intState = eosInterruptDisable();
    int position = hMotion->axisPos[axis];
    eosInterruptRestore(intState);

    hMotion->resultCode = axMotionSuccess;
    return position;
}


/*************************************************************************
 *
 *       Realitza un moviment lineal a la posicio especificada
 *
 *       Funcio:
 *           bool axMotionDoMoveAbs(
 *               axMotionHandle hMotion,
 *               int position[])
 *
 *       Entrada:
 *           hMotion : El handle
 *           position: Posicio
 *
 *       Retorn:
 *          True si tot es correcte, false en cas contrari
 *
 *************************************************************************/

bool axMotionDoMoveAbs(
    axMotionHandle hMotion,
    int position[]) {

    // Si es ocupat no fa res
    //
    if (hMotion->isBusy) {
        hMotion->resultCode = axMotionBusy;
        return false;
    }

    unsigned i;

    // Si el moviment es fora de rang no fa res
    //
    for (i = 0; i < hMotion->numAxis; i++) {
        if ((position[i] < 0) || (position[i] >= hMotion->axisMax[i])) {
            hMotion->resultCode = axMotionErrorParamOutOfRange;
            return false;
        }
    }

    // Comprova si cal moure quelcom
    //
    bool canMove = false;
    for (i = 0; (i < hMotion->numAxis) && !canMove; i++) {
        if (position[i] != hMotion->axisPos[i])
            canMove = true;
    }

    // Si cal moure, ho fa
    //
    if (canMove) 
        start(hMotion, position);

    hMotion->resultCode = axMotionSuccess;
    return true;
}


/*************************************************************************
 *
 *       Realitza un moviment relatiu a la posicio actual
 *
 *       Funcio:
 *           bool axMoveRel(
 *               axMotionHandle hMotion,
 *               int delta[])
 *
 *       Entrada:
 *           hMotion: El handler
 *           delta  : Increment de posicio
 *
 *       Retorn:
 *           True si tot es correcte, false en cas contrari
 *
 *************************************************************************/

bool axMotionDoMoveRel(
    axMotionHandle hMotion,
    int delta[]) {

    // Pasa a coordinades absolutes
    //
    int position[MAX_AXIS];
    unsigned i;
    for (i = 0; i < hMotion->numAxis; i++)
        position[i] = hMotion->axisPos[i] + delta[i];

    return axMotionDoMoveAbs(hMotion, position);
}


/*************************************************************************
 *
 *       Realitza un moviment absolut en el eix especificat
 *
 *       Funcio:
 *           bool axMotionDoMoveAbsAxis(
 *               axMotionHandle hMotion,
 *               UINT8 axis,
 *               int position)
 *
 *       Entrada:
 *           hMotion : El handler
 *           axis    : Eix a moure
 *           position: Nova posicio
 *
 *       Retorn:
 *           True si tot es correcte, false en cas contrari
 *
 *************************************************************************/

bool axMotionDoMoveAbsAxis(
    axMotionHandle hMotion,
    unsigned axis,
    int position) {

    // Si els parametres son incorrectes, no fa res
    //
    if (axis >= hMotion->numAxis) {
        hMotion->resultCode = axMotionErrorParamOutOfRange;
        return false;
    }

    // Calcula el moviment a realitzar
    //
    int p[MAX_AXIS];
    unsigned i;
    for (i = 0; i < hMotion->numAxis; i++)
        if (i == axis)
            p[i] = position;
        else
            p[i] = hMotion->axisPos[i];

    // Reslitza el moviment
    //
    return axMotionDoMoveAbs(hMotion, p);
}


/*************************************************************************
 *
 *       Initialitza el temporitzador
 *
 *       Funcio:
 *           void timerInitialize(void)
 *
 *************************************************************************/

static void timerInitialize(void) {

    // Configura el temporitzador per que generi interrupcion a 100Khz (10us)
    //
    PLIB_TMR_Stop(MOTION_TIMER_ID);
    PLIB_TMR_ClockSourceSelect(MOTION_TIMER_ID, TMR_CLOCK_SOURCE_PERIPHERAL_CLOCK);
    PLIB_TMR_PrescaleSelect(MOTION_TIMER_ID, TMR_PRESCALE_VALUE_16);
    PLIB_TMR_Mode16BitEnable(MOTION_TIMER_ID);
    PLIB_TMR_Counter16BitClear(MOTION_TIMER_ID);
    PLIB_TMR_Period16BitSet(MOTION_TIMER_ID, 50);

    // Configura les interrupcions del temporitzador
    //
    PLIB_INT_SourceEnable(INT_ID_0, MOTION_TIMER_INT_SOURCE);
    PLIB_INT_VectorPrioritySet(INT_ID_0, MOTION_TIMER_INT_VECTOR, INT_PRIORITY_LEVEL2);
    PLIB_INT_VectorSubPrioritySet(INT_ID_0, MOTION_TIMER_INT_VECTOR, INT_SUBPRIORITY_LEVEL0);
}


/*************************************************************************
 *
 *       Activa el temporitzador i comença a disparar interrupcions
 *
 *       Funcio:
 *           void timerStart(void)
 *
 *************************************************************************/

static void timerStart(void) {
    
    PLIB_TMR_Start(MOTION_TIMER_ID);
}


/*************************************************************************
 *
 *       Para el temporitzador
 *
 *       Funcio:
 *           void halTimerStop(void)
 *
 *************************************************************************/

static void timerStop(void) {

    PLIB_TMR_Stop(MOTION_TIMER_ID);
}


/*************************************************************************
 *
 *       Gestiona la interrupcio del temporitzador
 *
 *************************************************************************/

void __ISR(MOTION_TIMER_CORE_VECTOR, IPL2SOFT) axMotionServiceISR(void) {

    if (hActiveMotion)
        loop(hActiveMotion);

    PLIB_INT_SourceFlagClear(INT_ID_0, MOTION_TIMER_INT_SOURCE);
}


/*************************************************************************
 *
 *       Inicialitzacio del moviment
 *
 *       Funcio:
 *           void start(
 *               axMotionHandle hMotion,
 *               int position[]),
 *
 *       Entrada:
 *           hMotion : El handler
 *           position: Coordinades absolutes del desti del moviment
 *
 *************************************************************************/

static void start(
    axMotionHandle hMotion,
    int position[]) {

    unsigned i;

    // Posa el controlador en modus ocupat
    //
    hMotion->isBusy = TRUE;

    // Realitza les operacions de calcul de trajectoria
    //
    int delta[MAX_AXIS];
    for (i = 0; i < hMotion->numAxis; i++) {
        int d = position[i] - hMotion->axisPos[i];
        if (d < 0) {
            d = -d;
            hMotion->inc[i] = -1;
            axMotorSetDirection(hMotion->hMotor[i], MOTOR_DIR_BACKWARD);
        }
        else {
            hMotion->inc[i] = 1;
            axMotorSetDirection(hMotion->hMotor[i], MOTOR_DIR_FORWARD);
        }
        delta[i] = d;
    }

    int deltaMax = INT_MIN;
    for (i = 0; i < hMotion->numAxis; i++) {
        if (delta[i] > deltaMax) {
            deltaMax = delta[i];
            hMotion->mainAxis = i;
        }
    }
    for (i = 0; i < hMotion->numAxis; i++) {
        hMotion->ddelta[i] = delta[i] * 2;
        hMotion->error[i] = hMotion->ddelta[i] - deltaMax;
    }
    hMotion->stepCounter = 0;
    hMotion->stepNumber = deltaMax;

    // Realitza les operacions de calcul del perfil de velocitat
    //
    double S1, S2, S3;
    double V1, V2, V3;
    double T1, T2, T3;
    double distance, speed, acceleration, jerk;

    speed = hMotion->maxSpeed;
    acceleration = hMotion->maxAcceleration;
    jerk = hMotion->jerk;
    distance = (double) hMotion->stepNumber;

    T1 = acceleration / jerk;
    V1 = 0.5 * jerk * exp2(T1);

    if (V1 > (0.5 * speed)) {

        T1 = sqrt(speed / jerk);
        V1 = 0.5 * speed;
        S1 = (jerk * exp3(T1)) / 6.0;

        T2 = 0;
        V2 = V1;
        S2 = 0.0;

        T3 = T1;
        V3 = speed;
        S3 = (V2 * T3) + (jerk * T1 * exp2(T3) * 0.5) - (jerk * exp3(T3) / 6.0);
    }
    else {

        S1 = jerk * exp3(T1) / 6.0;

        T2 = (speed - (2.0 * V1)) / acceleration;
        V2 = V1 + (acceleration * T2);
        S2 = (0.5 * acceleration * exp2(T2)) + (V1 * T2);

        T3 = T1;
        V3 = speed;
        S3 = (V2 * T3) +
             (0.5 * acceleration * exp2(T3)) -
             (jerk * exp3(T3) / 6.0);
    }

    if ((S1 + S2 + S3) > (distance * 0.5)) {
        if ((S1 + S3) > (distance * 0.5)) {

            T1 = pow((distance * 0.5) / jerk, 1.0 / 3.0);
            V1 = 0.5 * jerk * exp2(T1);
            S1 = jerk * exp3(T1) / 6.0;

            T2 = 0.0;
            V2 = V1;
            S2 = 0.0;

            T3 = T1;
            S3 = (V2 * T3) + (0.5 * jerk * T1 * exp2(T3)) - (jerk * exp3(T3) / 6.0);
        }
        else {

            T1 = acceleration / jerk;
            V1 = 0.5 * jerk * exp2(T1);
            S1 = jerk * exp3(T1) / 6.0;

            T2 = (1.0 / (2.0 * jerk * T1)) * ((-3.0 * jerk * exp2(T1)) +
                 sqrt((exp2(jerk) * pow(T1, 4.0)) + (4.0 * jerk * T1 * distance)));
            V2 = V1 + (T2 * acceleration);
            S2 = (0.5 * acceleration * exp2(T2)) + (V1 * T2);

            T3 = T1;
            V3 = speed;
            S3 = (V2 * T3) + (0.5 * acceleration * exp2(T3)) - (jerk * exp3(T3) / 6.0);
        }
    }

    // Escala per treballar a la frequencia de les interrupcions
    //
    hMotion->distSAccel = (INT64) (T1 * HZ);
    hMotion->distSConst = (INT64) (T2 * HZ);
    hMotion->distSDecel = (INT64) (T3 * HZ);

    // Inicialitza les variables
    //
    hMotion->count = 0;
    hMotion->phase = 0;
    hMotion->curJerk = (INT64) (jerk * 281474976710656.0 / exp3(HZ));
    hMotion->curAcceleration = 0;
    hMotion->curSpeed = 0;
    hMotion->curPosition = 0;
    hActiveMotion = hMotion;

    // Activa el temporitzador i comença a generar interrupcions
    //
    timerStart();
}


/*************************************************************************
 *
 *       Generacio del moviment. Cal cridar-la cada 10us
 *
 *       Funcio:
 *           void loop(
 *               axMotionHandle hMotion)
 *
 *       Entrada:
 *           hMotion: El handler
 *
 *************************************************************************/

static void loop(
    axMotionHandle hMotion) {

    unsigned i;
    bool doStep = false;

    for (i = 0; i < hMotion->numAxis; i++)
        axMotorSetStep(hMotion->hMotor[i], MOTOR_STEP_HI);

    switch (hMotion->phase) {

        // Fase d'increment de l'acceleracio
        //
        case 0:
            if (hMotion->count < hMotion->distSAccel) {

                hMotion->curAcceleration += hMotion->curJerk;
                hMotion->curSpeed += hMotion->curAcceleration;
                hMotion->curPosition += hMotion->curSpeed;

                if (hMotion->curPosition & 0xFFFF000000000000LL) {
                    hMotion->curPosition &= 0x0000FFFFFFFFFFFFLL;
                    doStep = true;
                }

                hMotion->count++;
            }

            if (hMotion->count >= hMotion->distSAccel) {
                hMotion->count = 0;
                hMotion->phase++;
            }
            break;

        // Fase d'acceleracio constant
        //
        case 1:
            if (hMotion->count < hMotion->distSConst) {

                hMotion->curSpeed += hMotion->curAcceleration;
                hMotion->curPosition += hMotion->curSpeed;

                if (hMotion->curPosition & 0xFFFF000000000000LL) {
                    hMotion->curPosition &= 0x0000FFFFFFFFFFFFLL;
                    doStep= true;
                }

                hMotion->count++;
            }

            if (hMotion->count >= hMotion->distSConst) {
                hMotion->count = 0;
                hMotion->phase++;
            }
            break;

        // Fase de decrement de l'acceleracio
        //
        case 2:
            if (hMotion->count < hMotion->distSDecel) {

                hMotion->curAcceleration -= hMotion->curJerk;
                hMotion->curSpeed += hMotion->curAcceleration;
                hMotion->curPosition += hMotion->curSpeed;

                if (hMotion->curPosition & 0xFFFF000000000000LL) {
                    hMotion->curPosition &= 0x0000FFFFFFFFFFFFLL;
                    doStep = true;
                }

                hMotion->count++;
            }

            if (hMotion->count >= hMotion->distSDecel) {
                hMotion->count = 0;
                hMotion->phase++;

                if ((hMotion->stepCounter * 2) < hMotion->stepNumber)
                    hMotion->stepSFlat = (hMotion->stepNumber - (hMotion->stepCounter * 2)) + 1;
                else
                    hMotion->stepSFlat = 1;
            }
            break;

        // Fase de velocitat constant
        //
        case 3:
            if (hMotion->count < hMotion->stepSFlat) {

                hMotion->curPosition += hMotion->curSpeed;

                if (hMotion->curPosition & 0xFFFF000000000000LL) {
                    hMotion->curPosition &= 0x0000FFFFFFFFFFFFLL;
                    doStep = true;

                    hMotion->count++; // Esta aqui perque conta pasos
                }
            }

            if (hMotion->count >= hMotion->stepSFlat) {
                hMotion->count = 0;
                hMotion->phase++;
            }
            break;

        case 4:
            if (hMotion->count < hMotion->distSDecel) {

                hMotion->curAcceleration += hMotion->curJerk;
                hMotion->curSpeed -= hMotion->curAcceleration;
                hMotion->curPosition += hMotion->curSpeed;

                if (hMotion->curPosition & 0xFFFF000000000000LL) {
                    hMotion->curPosition &= 0x0000FFFFFFFFFFFFLL;
                    doStep = true;
                }

                hMotion->count++;
            }

            if (hMotion->count >= hMotion->distSDecel) {
                hMotion->count = 0;
                hMotion->phase++;
            }
            break;

        case 5:
            if (hMotion->count < hMotion->distSConst) {

                hMotion->curSpeed -= hMotion->curAcceleration;
                hMotion->curPosition += hMotion->curSpeed;

                if (hMotion->curPosition & 0xFFFF000000000000LL) {
                    hMotion->curPosition &= 0x0000FFFFFFFFFFFFLL;
                    doStep = true;
                }

                hMotion->count++;
            }

            if (hMotion->count >= hMotion->distSConst) {
                hMotion->count = 0;
                hMotion->phase++;
            }
            break;

        case 6:
            if (hMotion->stepCounter < hMotion->stepNumber) { // Tots els pasos que resten

                // Evita que la velocitat sigui negativa
                //
                if (hMotion->curAcceleration > (2 * hMotion->curJerk)) {
                    hMotion->curAcceleration -= hMotion->curJerk;
                    hMotion->curSpeed -= hMotion->curAcceleration;
                }
                hMotion->curPosition += hMotion->curSpeed;

                if (hMotion->curPosition & 0xFFFF000000000000LL) {
                    hMotion->curPosition &= 0x0000FFFFFFFFFFFFLL;
                    doStep = true;
                }
            }
            break;
    }

    // Realitza un pas de la trajectoria utilitzan Besenham
    //
    if (doStep) {
        
        int ma = hMotion->mainAxis;
        for (i = 0; i < hMotion->numAxis; i++) {
            if (i != ma) {
                if (hMotion->error[i] > 0) {
                    hMotion->error[i] -= hMotion->ddelta[ma];
                    hMotion->axisPos[i] += hMotion->inc[i];
                    axMotorSetStep(hMotion->hMotor[i], MOTOR_STEP_LO);
                }
                hMotion->error[i] += hMotion->ddelta[i];
            }
        }
        hMotion->axisPos[ma] += hMotion->inc[ma];
        axMotorSetStep(hMotion->hMotor[ma], MOTOR_STEP_LO);

        // Incrementa el contador de pasos
        //
        hMotion->stepCounter += 1;
        
        // Si ha acabat, finalitza el moviment
        //
        if (hMotion->stepCounter == hMotion->stepNumber) {
            timerStop();
            hMotion->isBusy = false;
            hActiveMotion = NULL;
        }
    }
}
