#ifndef __AX_MOTION_H
#define __AX_MOTION_H


#ifndef __EOS_H
#include "eos.h"
#endif

#ifndef __MOTOR_H
#include "motor.h"
#endif


#ifndef MAX_AXIS
#define MAX_AXIS             3         // Numero maxim d'eixos soportats
#endif


typedef struct __axMotion *axMotionHandle;

typedef enum {                         // Resultats de l'operacio
    axMotionSuccess = 0,               // -Tot correcte
    axMotionBusy,                      // -El driver es ocupat
    axMotionErrorAlloc,                // -Error de memoria
    axMotionErrorParamOutOfRange,      // -Parametre fora de rang
    axMotionErrorParamNull,            // -Parametre null
} axMotionResultCode;

typedef struct {                       // Parametres d'inicialitzacio
    unsigned numAxis;                  // -Numero maxim d'eixos a utilitzar
    axMotorHandle hMotor[MAX_AXIS];    // -Handlers dels motors dels eixos
} axMotionParams;


extern axMotionHandle axMotionInitialize(axMotionParams *params);
extern axMotionResultCode axMotionGetResult(axMotionHandle hMotion);

extern bool axMotionSetMaxSpeed(axMotionHandle hMotion, unsigned maxSpeed);
extern bool axMotionSetMaxAcceleration(axMotionHandle hMotion, unsigned maxAcceleration);
extern bool axMotionSetJerk(axMotionHandle hMotion, unsigned jerk);

extern bool axMotionIsBusy(axMotionHandle hMotion);
extern int axMotionGetAxis(axMotionHandle hMotion, unsigned axis);

extern bool axMotionDoAdvanceAxis(axMotionHandle hMotion, unsigned axis);
extern bool axMotionDoStopAxis(axMotionHandle hMotion, unsigned axis);
extern bool axMotionDoMoveAbsAxis(axMotionHandle hMotion, unsigned axis, int position);
extern bool axMotionDoMoveRelAxis(axMotionHandle hMotion, unsigned axis, int delta);
extern bool axMotionDoMoveAbs(axMotionHandle hMotion, int position[]);
extern bool axMotionDoMoveRel(axMotionHandle hMotion, int delta[]);

#endif
