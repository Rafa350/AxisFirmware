#ifndef __AX_SELECTORSERVICE_H
#define __AX_SELECTORSERVICE_H


#ifndef __EOS_H
#include "eos.h"
#endif

#ifndef __EOS_I2CMASTER_H
#include "Services/eosI2CMaster.h"
#endif


typedef struct __axSelectorService *axSelectorServiceHandle;

typedef void (*axSelectorCallback)(axSelectorServiceHandle hService);

typedef struct {
    eosI2CMasterServiceHandle hI2CMasterService;
    BYTE i2cAddr;
    axSelectorCallback onPositionChanged;
    axSelectorCallback onStateChanged;
} axSelectorServiceParams;


extern axSelectorServiceHandle axSelectorServiceInitialize(axSelectorServiceParams *params);
extern bool axSelectorServiceIsReady(axSelectorServiceHandle hService);
extern void axSelectorServiceTask(axSelectorServiceHandle hService);

extern UINT8 axSelectorGetState(axSelectorServiceHandle hService);
extern int axSelectorGetPosition(axSelectorServiceHandle hService);


#endif
