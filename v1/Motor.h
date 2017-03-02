#ifndef __AX_MOTOR_H
#define __AX_MOTOR_H


#ifndef __EOS_H
#include "eos.h"
#endif

#ifndef _PLIB_PORTS_H
#include "peripheral/ports/plib_ports.h"
#endif


#define MOTOR_DIR_FORWARD    true
#define MOTOR_DIR_BACKWARD   false

#define MOTOR_ENABLE_ON      true
#define MOTOR_ENABLE_OFF     false

#define MOTOR_STEP_HI        true
#define MOTOR_STEP_LO        false


typedef struct __axMotor *axMotorHandle;

typedef struct {                  // Parmetres d'inicialitzacio
    PORTS_CHANNEL chnStep;        // -Canal del senyal STP
    PORTS_BIT_POS posStep;        // -Pin del senyal STP
    PORTS_CHANNEL chnDirection;   // -Canal del senyal DIR
    PORTS_BIT_POS posDirection;   // -Canal del senyal DIR
    PORTS_CHANNEL chnEnable;      // -Canal del senyal ENA
    PORTS_BIT_POS posEnable;      // -Pin del senyal ENA
} axMotorParams;


extern axMotorHandle axMotorInitialize(axMotorParams *params);

extern void axMotorSetEnable(axMotorHandle hMotor, bool enable);
extern void axMotorSetDirection(axMotorHandle hMotor, bool forward);
extern void axMotorSetStep(axMotorHandle hMotor, bool level);


#endif