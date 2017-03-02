#ifndef __AX_MOTIONSERVICE_H
#define __AX_MOTIONSERVICE_H

#ifndef __EOS_H
#include "eos.h"
#endif


#ifndef __EOS_QUEUE_H
#include "System/eosQueue.h"
#endif

#ifndef __EOS_DIGOUTPUT_H
#include "Services/eosDigOutput.h"
#endif

#ifndef __MOTION_H
#include "Motion.h"
#endif


// Identificadors dels eixos
//
#define X_AXIS               0         // Eix X
#define Y_AXIS               1         // Eix Y
#define Z_AXIS               2         // Eix Z


typedef struct __axMotionService *axMotionServiceHandle;

typedef struct {                       // Parametres d'inicialitzacio del servei
    unsigned commandQueueLength;       // -Longitut de la cua de comandes interna
    eosDigOutputHandle hLedBusy;       // -Sortida pel led BUSY
    eosDigOutputHandle hLedQueue;      // -Sortida pel led QUEUE
} axMotionServiceParams;


extern axMotionServiceHandle axMotionServiceInitialize(axMotionServiceParams *params);
extern void axMotionServiceTask(axMotionServiceHandle hService);

extern void axMotionServiceDoMoveAbs(axMotionServiceHandle hService, int position[]);

extern void axMotionServiceSetJerk(axMotionServiceHandle hService, unsigned jerk);
extern void axMotionServiceSetMaxAcceleration(axMotionServiceHandle hService, unsigned maxAcceleration);
extern void axMotionServiceSetMaxSpeed(axMotionServiceHandle hService, unsigned maxSpeed);
extern bool axMotionServiceIsBusy(axMotionServiceHandle hService);


#endif