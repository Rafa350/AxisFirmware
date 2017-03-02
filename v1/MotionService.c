#include "MotionService.h"
#include "HardwareProfile.h"
#include "peripheral/int/plib_int.h"
#include "System/eosMemory.h"
#include "System/eosQueue.h"
#include "Services/eosDigOutput.h"
#include "Motor.h"
#include "Motion.h"


// Valors maxims per defecte
//
#define SR                    3200     // Pases per revolucio
#define DEF_MAX_JERK         80000     // Impuls maxim
#define DEF_MAX_ACCEL       800000     // Acceleracio maxima
#define DEF_MAX_SPEED        40000     // Velocitat maxima


typedef enum {                         // Estat del servei
    serviceInitializing,               // -Inicialitzant el servei
    serviceWaitCommand,                // -Espera que hagin comandes
    serviceStartCommand,               // -Procesa la comanda
    serviceWaitEndCommand,             // -Espera el final del proces de la comanda
    serviceWaitEndPause,               // -Espera el final de la pausa
} axMotionServiceState;

typedef enum {                         // Codis d'operacio de la comanda
    opCode_DoMoveAbs,                  // -Mou a ua posicio absoluta
    opCode_DoMoveRel,                  // -Mou a ua posicio relativa
    opCode_SetJerk,                    // -Asigna el impuls
    opCode_SetAcceleration,            // -Asigna l'acceleracio
    opCode_SetSpeed,                   // -Asigna la velocitat
    opCode_DoPause                     // -Espera un temps
} OpCode;

typedef struct {                       // Comanda
    OpCode opCode;                     // -Codi d'operacio
    union {
        struct {                       // -Parametres per opCode_DoMoveAbs
            int xPos;                  //  -Posicio X
            int yPos;                  //  -Posicio Y
            int zPos;                  //  -Posicio Z
        } doMoveAbs;
        struct {                       // -Parametres per opCode_DoMoveRel
            int xDelta;                //  -Increment X
            int yDelta;                //  -Increment Y
            int zDelta;                //  -Increment Z
        } doMoveRel;
        struct {                       // -Parametres per opCode_SetJerk
            unsigned jerk;             //  -Impuls
        } setJerk;
        struct {                       // -Parametres per opCode_SetAcceleration
            unsigned acceleration;     //  -Acceleracio
        } setAcceleration;
        struct {                       // -Parametres per opCode_SetSpeed
            unsigned speed;            //  -Vel·locitat
        } setSpeed;
    };
} Command;

typedef struct __axMotionService {     // Dades internes del servei
    axMotionServiceState state;        // -Estat del servei
    eosHQueue hCommandQueue;           // -Cua de missatges
    eosDigOutputHandle hLedBusy;       // -Handler del led BUSY
    eosDigOutputHandle hLedQueue;      // -Handler del led QUEUE
    axMotionHandle hMotion;            // -Handler del control de moviment
    bool isBusy;                       // -Ocupat en un moviment
} axMotionService;


/*************************************************************************
 *
 *       Inicialitza el servei
 *
 *       Funcio:
 *           axMotionServiceHandle axMotionServiceInitialize(
 *               axMotionServiceParams *params)
 *
 *       Entrada:
 *           params: Parametres del servei
 *       Retorn:
 *           El handler del servei
 *
 *************************************************************************/

axMotionServiceHandle axMotionServiceInitialize(
    axMotionServiceParams *params) {

    axMotorParams motorParams;
    axMotionParams motionParams;

    axMotionServiceHandle hService = (axMotionServiceHandle) eosAlloc(sizeof(axMotionService));
    if (!hService)
        return NULL;

    // Inicialitza el driver del motor X
    //
    motorParams.chnStep = MOTOR_X_STP_CHN;
    motorParams.chnDirection = MOTOR_X_DIR_CHN;
    motorParams.chnEnable = MOTOR_X_ENA_CHN;
    motorParams.posStep = MOTOR_X_STP_POS;
    motorParams.posDirection = MOTOR_X_DIR_POS;
    motorParams.posEnable = MOTOR_X_ENA_POS;
    motionParams.hMotor[X_AXIS] = axMotorInitialize(&motorParams);

    // Inicialitza el driver del motor Y
    //
    motorParams.chnStep = MOTOR_Y_STP_CHN;
    motorParams.chnDirection = MOTOR_Y_DIR_CHN;
    motorParams.chnEnable = MOTOR_Y_ENA_CHN;
    motorParams.posStep = MOTOR_Y_STP_POS;
    motorParams.posDirection = MOTOR_Y_DIR_POS;
    motorParams.posEnable = MOTOR_Y_ENA_POS;
    motionParams.hMotor[Y_AXIS] = axMotorInitialize(&motorParams);

    // Inicialitza el driver del motor Z
    //
    motorParams.chnStep = MOTOR_Z_STP_CHN;
    motorParams.chnDirection = MOTOR_Z_DIR_CHN;
    motorParams.chnEnable = MOTOR_Z_ENA_CHN;
    motorParams.posStep = MOTOR_Z_STP_POS;
    motorParams.posDirection = MOTOR_Z_DIR_POS;
    motorParams.posEnable = MOTOR_Z_ENA_POS;
    motionParams.hMotor[Z_AXIS] = axMotorInitialize(&motorParams);

    // Inicialitza el driver de moviment
    //
    motionParams.numAxis = NUM_AXIS;
    hService->hMotion = axMotionInitialize(&motionParams);
    axMotionSetMaxSpeed(hService->hMotion, DEF_MAX_SPEED);
    axMotionSetMaxAcceleration(hService->hMotion, DEF_MAX_ACCEL);
    axMotionSetJerk(hService->hMotion, DEF_MAX_JERK);

    // Inicialitza la cua de comandes
    //
    eosQueueParams queueParams;
    queueParams.maxItems = params->commandQueueLength;
    queueParams.itemSize = sizeof(Command);
    hService->hCommandQueue = eosQueueCreate(&queueParams);

    // Inicialitza les variables internes
    //
    hService->state = serviceInitializing;
    hService->isBusy = false;
    hService->hLedBusy = params->hLedBusy;
    hService->hLedQueue = params->hLedQueue;

    return  hService;
}


/*************************************************************************
 *
 *       Bucle de proces de la tasca
 *
 *       Funcio:
 *           void axMotionServiceTask(
 *               axMotionServiceHandle hService)
 *
 *       Entrada:
 *           hService: El handler del servei
 *
 *************************************************************************/

void axMotionServiceTask(
    axMotionServiceHandle hService) {

    switch (hService->state) {

        case serviceInitializing:
            hService->state = serviceWaitCommand;
            break;

        case serviceWaitCommand: 
            if (!eosQueueGetIsEmpty(hService->hCommandQueue)) {
                if (hService->hLedQueue)
                    eosDigOutputSet(hService->hLedQueue, true);
                hService->state = serviceStartCommand;
            }
            break;

        case serviceStartCommand: {
            Command command;
            if (eosQueueGet(hService->hCommandQueue, &command)) {
                bool pending = FALSE;
                switch (command.opCode) {
                    case opCode_DoMoveAbs: {
                        int position[3];
                        position[0] = command.doMoveAbs.xPos;
                        position[1] = command.doMoveAbs.yPos;
                        position[2] = command.doMoveAbs.zPos;
                        axMotionDoMoveAbs(hService->hMotion, position);
                        pending = axMotionIsBusy(hService->hMotion);
                        break;
                    }

                    case opCode_SetJerk:
                        axMotionSetJerk(hService->hMotion, command.setJerk.jerk);
                        break;

                    case opCode_SetAcceleration:
                        axMotionSetMaxAcceleration(hService->hMotion, command.setAcceleration.acceleration);
                        break;

                    case opCode_SetSpeed:
                        axMotionSetMaxSpeed(hService->hMotion, command.setSpeed.speed);
                        break;
                }

                if (pending) {
                    if (hService->hLedBusy)
                        eosDigOutputSet(hService->hLedBusy, TRUE);
                    hService->isBusy = TRUE;
                    hService->state = serviceWaitEndCommand;
                }
            }
            else {
                if (hService->hLedQueue)
                    eosDigOutputSet(hService->hLedQueue, FALSE);
                hService->state = serviceWaitCommand;
            }
            break;
        }

        case serviceWaitEndCommand: {
            if (axMotionIsBusy(hService->hMotion)) {
                if (hService->hLedBusy)
                    eosDigOutputSet(hService->hLedBusy, FALSE);
                hService->isBusy = FALSE;
                hService->state = serviceStartCommand;
            }
            break;
        }

        case serviceWaitEndPause:
            break;
    }
}


/*************************************************************************
 *
 *       Moviment a una posicio absoluta
 *
 *       Funcio:
 *           void axMotionServiceDoMoveAbs(
 *               axMotionServiceHandle hService,
 *               int position[])
 *
 *       Entrada:
 *           hService: Handler del servei
 *           position: Vector de coordinades de posicio
 *
 *************************************************************************/

void axMotionServiceDoMoveAbs(
    axMotionServiceHandle hService,
    int position[]) {

    Command command;
    command.opCode = opCode_DoMoveAbs;
    command.doMoveAbs.xPos = position[0];
    command.doMoveAbs.yPos = position[1];
    command.doMoveAbs.zPos = position[2];
    eosQueuePut(hService->hCommandQueue, &command);
}


/*************************************************************************
 *
 *       Asigna el valor del impuls
 *
 *       Funcio:
 *           void axMotionServiceSetJerk(
 *               axMotionServiceHandle hService,
 *               unsigned jerk)
 *
 *       Entrada:
 *           hService: Handler del servei
 *           jerk    : Valor del impult
 *
 *************************************************************************/

void axMotionServiceSetJerk(
    axMotionServiceHandle hService,
    unsigned jerk) {

    Command command;
    command.opCode = opCode_SetJerk;
    command.setJerk.jerk = jerk;
    eosQueuePut(hService->hCommandQueue, &command);
}


void axMotionServiceSetMaxAcceleration(
    axMotionServiceHandle hService,
    unsigned maxAcceleration) {

    Command command;
    command.opCode = opCode_SetAcceleration;
    command.setAcceleration.acceleration = maxAcceleration;
    eosQueuePut(hService->hCommandQueue, &command);
}


void axMotionServiceSetMaxSpeed(
    axMotionServiceHandle hService,
    unsigned maxSpeed) {

    Command command;
    command.opCode = opCode_SetSpeed;
    command.setSpeed.speed = maxSpeed;
    eosQueuePut(hService->hCommandQueue, &command);
}


bool axMotionServiceIsBusy(
    axMotionServiceHandle hService) {

    return hService->isBusy;
}
