#include "SelectorService.h"
#include "Services/eosI2CMaster.h"
#include "System/eosMemory.h"
#include "../MD-SEL01/SEL01Messages.h"
#include "string.h"


typedef enum {                         // Estats del servei
    serviceInitializing,
    serviceSendQuery,
    serviceWaitResponse,
    serviceProcessChanges
} axSelectorServiceState;

typedef struct __axSelectorService {
    axSelectorServiceState state;      // -Estat del servei
    eosI2CMasterServiceHandle hI2CMasterService; // -Handler del servei I2C
    eosI2CTransactionParams transactionParams;   // -Parametres de la transaccio
    BYTE i2cAddr;                      // -Addressa  I2C
    axSelectorCallback onPositionChanged;   // -Notifica canvis de posicio
    axSelectorCallback onStateChanged;      // -Notifiva canvis d'estat
    BYTE *buffer;                      // -Buffer per les respostes
    unsigned bufferSize;               // -Tamany del buffer
    UINT8 selState;                    // -Estat del boto
    int selPosition;                   // -Posicio del selector
    bool selStateChanged;              // -Indica canvi en l'estat del selector
    bool selPositionChanged;           // -Indica canvi en la posicio del selector
} axSelectorService;


static BYTE query[1]  = { SEL_CMD_GETSTATE };


static void onEndTransaction(eosI2CTransactionHandle hTransaction);


/*************************************************************************
 *
 *       Inicialitza el servei
 *
 *       Funcio:
 *           axSelectorServiceHandle axSelectorServiceInitialize(
 *               axSelectorServiceParams *params)
 *
 *       Entrada:
 *           params: Parametres d'inicialitzacio
 *
 *       Retorn:
 *           El handler del fitxer. NULL en cas d'error
 *
 *************************************************************************/

axSelectorServiceHandle axSelectorServiceInitialize(
    axSelectorServiceParams *params) {

    axSelectorServiceHandle hService = (axSelectorServiceHandle) eosAlloc(sizeof(axSelectorService));
    if (!hService)
        return NULL;

    hService->hI2CMasterService = params->hI2CMasterService;
    hService->i2cAddr = params->i2cAddr;
    hService->bufferSize = 10;
    hService->buffer = (BYTE*) eosAlloc(hService->bufferSize);
    hService->state = serviceInitializing;
    hService->onStateChanged = params->onStateChanged;
    hService->onPositionChanged = params->onPositionChanged;
    hService->selState = 0;
    hService->selPosition = 0;

    memset(&hService->transactionParams, 0, sizeof(hService->transactionParams));
    hService->transactionParams.address = hService->i2cAddr;
    hService->transactionParams.txBuffer = query;
    hService->transactionParams.txCount = sizeof(query);
    hService->transactionParams.rxBuffer = hService->buffer;
    hService->transactionParams.rxSize = hService->bufferSize;
    hService->transactionParams.onEndTransaction = onEndTransaction;
    hService->transactionParams.context = hService;

    return hService;
}


/*************************************************************************
 *
 *       Comprova si el servei esta inicialitzat
 *
 *       Funcio:
 *           bool axSelectorServiceIsReady(
 *               axSelectorServiceHandle hService)
 *
 *       Entrada:
 *           hService: El handler del servei
 *
 *       Retorn:
 *           true si es inicialitzat, false en cas contrari
 *
 *************************************************************************/

bool axSelectorServiceIsReady(
    axSelectorServiceHandle hService) {

    return hService->state != serviceInitializing;
}


/*************************************************************************
 *
 *       Procesa les tasques del servei
 *
 *       Funcio:
 *           void axSelectorServiceTask(
 *               axSelectorServiceHandle hService)
 *
 *       Entrada:
 *           hService: El handler servei
 *
 *************************************************************************/

void axSelectorServiceTask(
    axSelectorServiceHandle hService) {

    switch (hService->state) {
        case serviceInitializing:
            if (eosI2CMasterServiceIsReady(hService->hI2CMasterService))
                hService->state = serviceSendQuery;
            break;        

        case serviceSendQuery:
            eosI2CMasterStartTransaction(hService->hI2CMasterService, &hService->transactionParams);
            hService->state = serviceWaitResponse;
            break;

        case serviceWaitResponse:
            break;

        case serviceProcessChanges:
            if (hService->selStateChanged) {
                if (hService->onStateChanged != NULL)
                    hService->onStateChanged(hService);
                hService->selStateChanged = false;
            }
            else if (hService->selPositionChanged) {
                if (hService->onPositionChanged != NULL)
                    hService->onPositionChanged(hService);
                hService->selPositionChanged = false;
            }
            hService->state = serviceSendQuery;
            break;
    }
}


/*************************************************************************
 *
 *       Obte l'estat del selector
 *
 *       Funcio:
 *           UINT8 axSelectorGetState(
 *               axSelectorServiceHandle hService)
 *
 *       Entrada:
 *           hService: El handler del servei
 *
 *       Retorn:
 *           L'estat del selector
 *
 *************************************************************************/

UINT8 axSelectorGetState(
    axSelectorServiceHandle hService) {

    return hService->selState;
}


/*************************************************************************
 *
 *       Obte la posicio del selector
 *
 *       Funcio:
 *           int axSelectorGetPosition(
 *               axSelectorServiceHandle hService)
 *
 *       Entrada:
 *           hService: El handler del servei
 *
 *       Retorn:
 *           La posicio del selector
 *
 *************************************************************************/

int axSelectorGetPosition(
    axSelectorServiceHandle hService) {

    return hService->selPosition;
}


/*************************************************************************
 *
 *       Procesa el final de la transaccio
 *
 *       Funcio:
 *           void onEndTransaction(
 *               eosI2CTransactionHandle hTransaction,
 *               axHSelectorService hService)
 *
 *       Entrada:
 *           hTransaction: El handler de la transaccio que ha
 *                         generat l'event
 *           hService    : El handler del servei
 *
 *************************************************************************/

static void onEndTransaction(
    eosI2CTransactionHandle hTransaction) {

    axSelectorServiceHandle hService = (axSelectorServiceHandle) eosI2CMasterGetTransactionContext(hTransaction);

    UINT8 oldSelState = hService->selState;
    unsigned oldSelPosition = hService->selPosition;

    hService->selState = hService->buffer[1];
    hService->selPosition = (INT16) ((hService->buffer[3] << 8) | hService->buffer[2]);

    hService->selStateChanged = oldSelState != hService->selState;
    hService->selPositionChanged = oldSelPosition != hService->selPosition;

    if (hService->selStateChanged || hService->selPositionChanged)
        hService->state = serviceProcessChanges;
    else
        hService->state = serviceSendQuery;
}
