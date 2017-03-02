#include "Motor.h"
#include "System/eosMemory.h"
#include "HardwareProfile.h"
#include "peripheral/ports/plib_ports.h"


typedef struct __axMotor {        // Bloc de control del motor
    PORTS_CHANNEL chnStep;        // -Canal pel senyal STP
    PORTS_BIT_POS posStep;        // -Pin pel senyal STP
    PORTS_CHANNEL chnDirection;   // -Canal pel senyal DIR
    PORTS_BIT_POS posDirection;   // -Pin pel senyal DIR
    PORTS_CHANNEL chnEnable;      // -Canal pel senyal ENA
    PORTS_BIT_POS posEnable;      // -Pin pel senyal ENA
} axMotor;


/*************************************************************************
 *
 *       Inicialitza el control de motor
 *
 *       Funcio:
 *           axMotorHandle axMotorInitialize(
 *               axMotorParams *params)
 *
 *       Entrada:
 *           params: Parametres d'inicialitzacio
 *
 *       Retorn:
 *           El handler del motor
 *
 *************************************************************************/
 
axMotorHandle axMotorInitialize(
    axMotorParams *params) {

    axMotorHandle hMotor = (axMotorHandle) eosAlloc(sizeof(axMotor));
    if (!hMotor)
        return NULL;

    hMotor->chnStep = params->chnStep;
    hMotor->posStep = params->posStep;
    hMotor->chnDirection = params->chnDirection;
    hMotor->posDirection = params->posDirection;
    hMotor->chnEnable = params->chnEnable;
    hMotor->posEnable = params->posEnable;

    // Inicialitza el port al seu estat inicial
    //
    PLIB_PORTS_PinSet(PORTS_ID_0, hMotor->chnStep, hMotor->posStep);
    PLIB_PORTS_PinClear(PORTS_ID_0, hMotor->chnDirection, hMotor->posDirection);
    PLIB_PORTS_PinClear(PORTS_ID_0, hMotor->chnEnable, hMotor->posEnable);

    // Activa el modus Open-Drain
    //
    PLIB_PORTS_PinOpenDrainEnable(PORTS_ID_0, hMotor->chnStep, hMotor->posStep);
    PLIB_PORTS_PinOpenDrainEnable(PORTS_ID_0, hMotor->chnDirection, hMotor->posDirection);
    PLIB_PORTS_PinOpenDrainEnable(PORTS_ID_0, hMotor->chnEnable, hMotor->posEnable);

    // Configura els ports com sortides
    //
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, hMotor->chnStep, hMotor->posStep);
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, hMotor->chnDirection, hMotor->posDirection);
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, hMotor->chnEnable, hMotor->posEnable);

    return hMotor;
}


/*************************************************************************
 *
 *       Activa/desactiva el motor
 *
 *       Funcio:
 *           void axMotorSetEnable(
 *               axMotorHandle hMotor,
 *               bool enable)
 *
 *       Entrada:
 *           hMotor: Handler del motor
 *           enable: TRUE per activar, FALSE per desactivar
 *
 *************************************************************************/

void axMotorSetEnable(
    axMotorHandle hMotor,
    bool enable) {

    PLIB_PORTS_PinWrite(PORTS_ID_0, hMotor->chnEnable, hMotor->posEnable, enable);
}


/*************************************************************************
 *
 *       Selecciona la direccio de gir del motor
 *
 *       Funcio:
 *           void axMotorSetDirection(
 *               axMotorHandle hMotor,
 *               bool forward)
 *
 *       Entrada:
 *           hMotor : Handler del motor
 *           forward: TRUE per anar endevant, FALSE per anar enderrera
 *
 *************************************************************************/

void axMotorSetDirection(
    axMotorHandle hMotor,
    bool forward) {

    PLIB_PORTS_PinWrite(PORTS_ID_0, hMotor->chnDirection, hMotor->posDirection, forward);
}


/*************************************************************************
 *
 *       Selecciona l'estat de la senyal STEP
 *
 *       Funcio:
 *           void axMotorSetStep(
 *               axMotor hMotor,
 *               bool level)
 *
 *       Entrada:
 *           hMotor: Handler del motor
 *           level : TRUE per ON, FALSE per OFF
 *
 *************************************************************************/

void axMotorSetStep(
    axMotorHandle hMotor,
    bool level) {

    PLIB_PORTS_PinWrite(PORTS_ID_0, hMotor->chnStep, hMotor->posStep, level);
}
