#ifndef __AX_USBSERVICE_H
#define __AX_USBSERVICE_H


#ifndef __EOS_H
#include "eos.h"
#endif

#ifndef __AX_MOTION_H
#include "Motion.h"
#endif

#ifndef __AX_MOTIONSERVICE_H
#include "MotionService.h"
#endif

typedef struct __axUsbService *axUsbServiceHandle;

typedef struct {
    axMotionServiceHandle hMotionService;
} axUsbServiceParams;


extern axUsbServiceHandle axUsbServiceInitialize(axUsbServiceParams *params);
extern void axUsbServiceTask(axUsbServiceHandle hService);


#endif