#include "XC.h"
#include "GenericTypedefs.h"
#include "HardwareProfile.h"
#include "peripheral/int/plib_int.h"
#include "System/eosQueue.h"
#include "Services/eosForms.h"
#include "Services/eosFormsMenus.h"
#include "Services/eosFormsIncDec.h"
#include "Services/eosTick.h"
#include "Services/eosTimer.h"
#include "Services/eosDigInput.h"
#include "Services/eosDigOutput.h"
#include "Services/eosI2CMaster.h"
#include "MotionService.h"
#include "UsbService.h"
#include "DisplayService.h"
#include "SelectorService.h"


static eosDigInputServiceHandle hDigInputService;
static eosDigOutputServiceHandle hDigOutputService;
static eosTimerServiceHandle hTimerService;
static eosI2CMasterServiceHandle hI2CMasterService;
static axMotionServiceHandle hMotionService;
static axUsbServiceHandle hUsbService;
static axDisplayServiceHandle hDisplayService;
static axSelectorServiceHandle hSelectorService;

static eosDigOutputHandle hLedBusy;
static eosDigOutputHandle hLedQueue;
static eosDigOutputHandle hLedError;

static eosDigInputHandle hSwitch1;
static eosDigInputHandle hSwitch2;
static eosDigInputHandle hSwitch3;

static eosFormHandle hMainForm;
extern const unsigned char menuMnuMain[];

extern eosFormHandle CreateMainForm(void);


static void switch1OnPosEdge(
    eosDigInputHandle hInput) {

    eosDigOutputsPulse(hLedError, 2000);
}

static void switch2OnPosEdge(
    eosDigInputHandle hInput) {

    eosDigOutputsPulse(hLedError, 2000);
}

static void switch3OnPosEdge(
    eosDigInputHandle hInput) {

    eosDigOutputsPulse(hLedError, 2000);
}


/*************************************************************************
 *
 *       Procesa els events del selector rotatiu
 *
 *       Funcio:
 *           void selectorOnPositionChanged(
 *               axSelectorServiceHandle hService)
 *
 *       Entrada:
 *           hService: El handler del servei
 *
 *************************************************************************/

static void selectorOnPositionChanged(
    axSelectorServiceHandle hService) {

    static int oldPosition = 0;

    int position = axSelectorGetPosition(hService);
    if (oldPosition != position) {
        eosFormsMessage message;
        message.id = MSG_SELECTOR;
        message.hForm = eosFormsGetActiveForm();
        message.msgSelector.position = abs(oldPosition - position);
        if (position > oldPosition)
            message.msgSelector.event = EV_SELECTOR_INC;
        else
            message.msgSelector.event = EV_SELECTOR_DEC;
        eosFormsPostMessage(&message);
        oldPosition = position;
    }
}


/*************************************************************************
 *
 *       Procesa els events del selector rotatiu
 *
 *       Funcio:
 *           void selectorOnStateChanged(
 *               axSelectorServiceHandle hService)
 *
 *       Entrada:
 *           hService: El handler del servei
 *
 *************************************************************************/

static void selectorOnStateChanged(
    axSelectorServiceHandle hService) {

    static unsigned oldState = 0;

    int state = axSelectorGetState(hService);
    if (oldState != state) {
        if (state == 1) {
            eosFormsMessage message;
            message.hForm = eosFormsGetActiveForm();
            message.id = MSG_SELECTOR;
            message.msgSelector.state = state;
            message.msgSelector.event = EV_SELECTOR_CLICK;
            eosFormsPostMessage(&message);
        }
        oldState = state;
    }
}


/*************************************************************************
 *
 *       Inicialitza el servei de temporitzadors
 *
 *       Funcio;
 *           void initializeTimerService(void) 
 *
 *************************************************************************/

static void initializeTimerService(void) {

    eosTimerServiceParams timerServiceParams;

    // Inicialitaza el servei de temporitzadors
    //
    memset(&timerServiceParams, 0, sizeof(timerServiceParams));
    hTimerService = eosTimerServiceInitialize(&timerServiceParams);

    // Inicialitza un temporitzador
    //
    //delayTimer = eosTimerDelayStart(10000);
}


/*************************************************************************
 *
 *       Inicialitza el servei d'entrades digitals
 *
 *       Funcio:
 *           void initializeInputService(void) 
 *
 *************************************************************************/

static void initializeInputService(void) {

    eosDigInputServiceParams inputServiceParams;
    eosDigInputParams inputParams;

    // Inicialitza el servei d'entrades digitals
    //
    memset(&inputServiceParams, 0, sizeof(inputServiceParams));
    hDigInputService = eosDigInputServiceInitialize(&inputServiceParams);

    // Inicialitza una entrada per SW1
    //
    memset(&inputParams, 0, sizeof(inputParams));
    inputParams.channel = 3;
    inputParams.position = 6;
    inputParams.inverted = true;
    inputParams.onPosEdge = switch1OnPosEdge;
    hSwitch1 = eosDigInputCreate(hDigInputService, &inputParams);

    // Inicialitza una entrada per SW2
    //
    memset(&inputParams, 0, sizeof(inputParams));
    inputParams.channel = 3;
    inputParams.position = 7;
    inputParams.inverted = true;
    inputParams.onPosEdge = switch2OnPosEdge;
    hSwitch2 = eosDigInputCreate(hDigInputService, &inputParams);

    // Inicialitza una entrada per SW3
    //
    memset(&inputParams, 0, sizeof(inputParams));
    inputParams.channel = 3;
    inputParams.position = 13;
    inputParams.inverted = true;
    inputParams.onPosEdge = switch3OnPosEdge;
    hSwitch3 = eosDigInputCreate(hDigInputService, &inputParams);
}


/*************************************************************************
 *
 *       Inicialitza el servei de sortides digitals
 *
 *       Funcio:
 *           void initializeOutputService(void)
 *
 *************************************************************************/

static void initializeOutputService(void) {

    // Inicialitza el servei de sortides digitals
    //
    eosDigOutputServiceParams outputServiceParams;
    memset(&outputServiceParams, 0, sizeof(outputServiceParams));
    hDigOutputService = eosDigOutputServiceInitialize(&outputServiceParams);

    // Inicialitza el led ERROR
    //
    eosDigOutputParams outputParams;
    memset(&outputParams, 0, sizeof(outputParams));
    outputParams.channel = LED_ERROR_CHN;
    outputParams.position = LED_ERROR_POS;
    hLedError = eosDigOutputCreate(hDigOutputService, &outputParams);

    // Inicialitza el led BUSY
    //
    memset(&outputParams, 0, sizeof(outputParams));
    outputParams.channel = LED_BUSY_CHN;
    outputParams.position = LED_BUSY_POS;
    hLedBusy = eosDigOutputCreate(hDigOutputService, &outputParams);

    // Inicialitza el led QUEUE
    //
    memset(&outputParams, 0, sizeof(outputParams));
    outputParams.channel = LED_QUEUE_CHN;
    outputParams.position = LED_QUEUE_POS;
    hLedQueue = eosDigOutputCreate(hDigOutputService, &outputParams);
}


/*************************************************************************
 *
 *       Inicialitza el servei de control de moviment
 *
 *       Funcio:
 *           void initializeMotionService(void)
 *
 *************************************************************************/

static void initializeMotionService(void) {

    axMotionServiceParams motionServiceParams;

    // Inicialitza el servei de gestio de moviment
    //
    memset(&motionServiceParams, 0, sizeof(motionServiceParams));
    motionServiceParams.commandQueueLength = 100;
    motionServiceParams.hLedBusy = hLedBusy;
    motionServiceParams.hLedQueue = hLedQueue;
    hMotionService = axMotionServiceInitialize(&motionServiceParams);
}


/*************************************************************************
 *
 *       Inicialitza el servei de comunicacions USB
 * 
 *       Funcio:
 *           void initializeUsbService(void) 
 *
 *************************************************************************/

static void initializeUsbService(void) {

    axUsbServiceParams usbServiceParams;
    memset(&usbServiceParams, 0, sizeof(axUsbServiceParams));
    usbServiceParams.hMotionService = hMotionService;
    hUsbService = axUsbServiceInitialize(&usbServiceParams);
}


/*************************************************************************
 *
 *       Inicialitza el servei de comunicacions I2C
 *
 *       Funcio:
 *           void initializeI2CService(void)
 *
 *************************************************************************/

static void initializeI2CService(void) {

    eosI2CServiceParams i2cServiceParams;
    memset(&i2cServiceParams, 0, sizeof(i2cServiceParams));
    i2cServiceParams.id = I2C_ID_2;
    hI2CMasterService = eosI2CMasterServiceInitialize(&i2cServiceParams);
}


/*************************************************************************
 *
 *       Inicialitza el servei de gestion de forms
 *
 *       Funcio:
 *           void initializeFormsService(void)
 *
 *************************************************************************/

static void initializeFormsService(void) {

    eosFormsServiceParams serviceParams;
    eosFormParams formParams;

    // Inicialitza el servei
    //
    memset(&serviceParams, 0, sizeof(serviceParams));
    serviceParams.hDisplayService = hDisplayService;
    eosFormsServiceInitialize(&serviceParams);

    // Crea el form principal
    //
    hMainForm = CreateMainForm();
    eosFormsSetActiveForm(hMainForm);
}


/*************************************************************************
 *
 *       Inicialitza el servei de pantalla
 *
 *       Funcio:
 *           void initializeDisplayService(void)
 *
 *************************************************************************/

static void initializeDisplayService(void) {

    axDisplayServiceParams displayServiceParams;
    memset(&displayServiceParams, 0, sizeof(displayServiceParams));
    displayServiceParams.hI2CMasterService = hI2CMasterService;
    displayServiceParams.i2cAddr = 0x62 >> 1;
    hDisplayService = axDisplayServiceInitialize(&displayServiceParams);
}


/*************************************************************************
 *
 *       Inicialitza el servei de selector rotatiu
 *
 *       Funcio:
 *           void initializeSelectorService(void)
 *
 *************************************************************************/

static int initializeSelectorService(void) {

    axSelectorServiceParams selectorServiceParams;
    memset(&selectorServiceParams, 0, sizeof(selectorServiceParams));
    selectorServiceParams.hI2CMasterService = hI2CMasterService;
    selectorServiceParams.i2cAddr = 0x42 >> 1;
    selectorServiceParams.onPositionChanged = selectorOnPositionChanged;
    selectorServiceParams.onStateChanged = selectorOnStateChanged;
    hSelectorService = axSelectorServiceInitialize(&selectorServiceParams);
}


/*************************************************************************
 *
 *       Inicialitza l'aplicacio
 *
 *       Funcio:
 *           void appSetup(void)
 *
 *************************************************************************/

void appSetup(void) {

    // Inicialitza els serveis basics, que no depenen de cap altre
    //
    initializeTimerService();
    initializeInputService();
    initializeOutputService();
    initializeI2CService();
    initializeMotionService();

    // Inicialitza els serveis que depenen dels serveis basics
    //
    //initializeUsbService();
    initializeDisplayService();
    initializeSelectorService();
    initializeFormsService();
}


/*************************************************************************
 *
 *       Procesa les tasques de l'aplicacio
 *
 *       Funcio:
 *           void appLoop(void)
 *
 *************************************************************************/

void appTask(void) {

    eosTimerServiceTask(hTimerService);
    eosDigInputServiceTask(hDigInputService);
    eosDigOutputServiceTask(hDigOutputService);
    eosI2CMasterServiceTask(hI2CMasterService);
    axMotionServiceTask(hMotionService);

    //axUsbServiceTask(hUsbService);
    axDisplayServiceTask(hDisplayService);
    axSelectorServiceTask(hSelectorService);
    eosFormsServiceTask();
}
