#include "Services/eosForms.h"
#include "Services/eosFormsIncDec.h"
#include "Services/eosFormsList.h"
#include "Services/eosFormsMenus.h"
#include "MnuMain.h"


typedef struct {                       // Dades privades del form
    eosFormHandle hMenuForm;           // -Handler del form menu
    eosFormHandle hNumericEditor;      // -Handler del editor numeric
} PrivateData;

typedef enum {                 // Tipus d'editor
    editorTypeNumeric,         // -Editor numeric Inc/Dec
    editorTypeList,            // -Editor de llistes
} EditorType;

typedef struct {               // Parametres del editor Inc/Dec
    int minValue;              // -Valor minim
    int maxValue;              // -Valor minim
    int delta;                 // -Valor del increment o decrement
    char *prefix;              // -Texte del prefix
    char *suffix;              // -Texte del sufix
} IncDecEditorParams;

typedef struct {               // Parametres generals del editor
    unsigned command;          // -Comanda
    EditorType editorType;     // -Tipus d'editor
    char *title;               // -Titol
    void *params;              // -Parametres
} EditorDescriptor;


static IncDecEditorParams numericEditorParams = {
    .minValue = 0,
    .maxValue = 1000000,
    .delta = 1000,
    .prefix = NULL,
    .suffix = NULL
};

static EditorDescriptor editorDescriptor[] = {
    {
        .command = CMD_SET_XJERK,
        .editorType = editorTypeNumeric,
        .title = "X-Axis: Jerk",
        .params = &numericEditorParams
    },
    {
        .command = CMD_SET_XMAXACCEL,
        .editorType = editorTypeNumeric,
        .title = "X-Axis: Max. Accel",
        .params = &numericEditorParams
    },
    {
        .command = CMD_SET_XMAXSPEED,
        .editorType = editorTypeNumeric,
        .title = "X-Axis: Max. Speed",
        .params = &numericEditorParams
    },
    {
        .command = CMD_SET_XNUMSTEPS,
        .editorType = editorTypeNumeric,
        .title = "X-Axis: Num. Steps",
        .params = &numericEditorParams
    },
    {
        .command = CMD_SET_XNUMUNITS,
        .editorType = editorTypeNumeric,
        .title = "X-Axis: Num. Units",
        .params = &numericEditorParams
    }
};

static char *edgeNames[] = { "Pos edge", "Neg edge" };


static void onMessage(eosFormsMessage *message);
static void onMsgCreate(eosFormsMessage *message);
static void onMsgCommand(eosFormsMessage *message);
static void onMsgActivate(eosFormsMessage *message);
static void onMsgSelectorClick(eosFormsMessage *message);
static void onMsgNotify(eosFormsMessage *message);
static void onMsgPaint(eosFormsMessage *message);

static void activateEditor(eosFormHandle hForm, unsigned command);
static void processMenuNotification(eosMenuNotifyGetValue *notifyParams);


eosFormHandle CreateMainForm(void) {

    eosFormParams formParams;
    memset(&formParams, 0, sizeof(formParams));
    formParams.privateDataSize = sizeof(PrivateData);
    formParams.onMessage = onMessage;
    
    return eosFormsCreateForm(&formParams);
}


static void onMessage(
    eosFormsMessage *message) {

    switch (message->id) {

        case MSG_CREATE:
            onMsgCreate(message);
            break;

        case MSG_ACTIVATE:
            onMsgActivate(message);
            break;

        case MSG_PAINT:
            onMsgPaint(message);
            break;

        case MSG_NOTIFY:
            onMsgNotify(message);
            break;

        case MSG_COMMAND:
            onMsgCommand(message);
            break;

        case MSG_SELECTOR:
            switch (message->msgSelector.event) {
                case EV_SELECTOR_CLICK:
                    onMsgSelectorClick(message);
                    break;
                }
            break;
    }
}


/*************************************************************************
 *
 *       Procesa el missatge MSG_CREATE
 *
 *       Funcio:
 *           void onMsgCreate(
 *               eosFormsMessage *message)
 *
 *       Entrada:
 *           entrada: El missatge a procesar
 *
 *************************************************************************/

static void onMsgCreate(eosFormsMessage *message) {

    PrivateData *data = (PrivateData*) message->msgCreate.privateData;

    // Crea el form del menu
    //
    eosMenuParams menuParams;
    memset(&menuParams, 0, sizeof(menuParams));
    menuParams.hParent = message->hForm;
    menuParams.resource = (BYTE*) menuMnuMain;
    data->hMenuForm = eosFormsCreateMenu(&menuParams);

    // Crea el editor numeric
    //
    eosIncDecParams numericParams;
    memset(&numericParams, 0, sizeof(eosIncDecParams));
    numericParams.hParent = message->hForm;
    data->hNumericEditor = eosFormsCreateIncDec(&numericParams);
}


/*************************************************************************
 *
 *       Procesa el missatge MSG_ACTIVATE
 *
 *       Funcio:
 *           void onMsgActivate(
 *               eosFormsMessage *message)
 *
 *       Entrada:
 *           entrada: El missatge a procesar
 *
 *************************************************************************/

static void onMsgActivate(
    eosFormsMessage *message) {

    eosFormsRefresh(message->hForm);
}


/*************************************************************************
 *
 *       Procesa el missatge MSG_COMMAND
 *
 *       Funcio:
 *           void onMsgCommand(
 *               eosFormsMessage *message)
 *
 *       Entrada:
 *           entrada: El missatge a procesar
 *
 *************************************************************************/

static void onMsgCommand(
    eosFormsMessage *message) {

    if (message->msgCommand.command == CMD_EXIT)
        eosFormsSetActiveForm(message->hForm);

    else {
        PrivateData *data = (PrivateData*) eosFormsGetPrivateData(message->hForm);
        activateEditor(message->hForm, message->msgCommand.command);
    }
}


/*************************************************************************
 *
 *       Procesa el missatge MSG_PAINT
 *
 *       Funcio:
 *           void onMsgPaint(
 *               eosFormsMessage *message)
 *
 *       Entrada:
 *           message: El missatge a procesar
 *
 *************************************************************************/

static void onMsgPaint(
    eosFormsMessage *message) {

    axDisplayServiceHandle hDisplay = message->msgPaint.hDisplayService;

    if (axDisplayBeginCommand(hDisplay)) {
        axDisplayAddCommandClear(hDisplay);
        axDisplayAddCommandDrawText(hDisplay, 0, 0, "Pulsar para 'menu'", 0, -1);
        axDisplayAddCommandDrawLine(hDisplay, 0, 10, 127, 10);
        axDisplayAddCommandRefresh(hDisplay);
        axDisplayEndCommand(hDisplay);
    }
}


/*************************************************************************
 *
 *       Procesa el missatge MSG_SELECTOR/EV_SELECTOR_CLICK
 *
 *       Funcio:
 *           void onMsgSelectorClick(
 *               eosFormsMessage *message)
 *
 *       Entrada:
 *           message: El missatge a procesar
 *
 *************************************************************************/

static void onMsgSelectorClick(
    eosFormsMessage *message) {

    PrivateData *data = (PrivateData*) eosFormsGetPrivateData(message->hForm);
    eosFormsSetActiveForm(data->hMenuForm);
}


/*************************************************************************
 *
 *       Procesa el missatge MSG_NOTIFY
 *
 *       Funcio:
 *           void onMsgNotify(
 *               eosFormsMessage *message)
 *
 *       Entrada:
 *           message: El missatge a procesar
 *
 *************************************************************************/

static void onMsgNotify(
    eosFormsMessage *message) {

    unsigned i;
    PrivateData *data = (PrivateData*) eosFormsGetPrivateData(message->hForm);

    // Procesa les notificacions provinents del menu
    //
    if (message->msgNotify.hSender == data->hMenuForm) {
        eosMenuNotifyGetValue *notifyParams = (eosMenuNotifyGetValue*) message->msgNotify.params;
        processMenuNotification(notifyParams);
    }

    // Procesa les notificacions provinents del editor numeric
    //
    else if (message->msgNotify.hSender == data->hNumericEditor) {
        if (message->msgNotify.event == EV_INCDEC_END) 
            eosFormsSetActiveForm(data->hMenuForm);
    }
}


static void activateEditor(
    eosFormHandle hForm,
    unsigned command) {

    unsigned i;

    for (i = 0; i < sizeof(editorDescriptor) / sizeof(editorDescriptor[0]); i++) {
        EditorDescriptor *ed = &editorDescriptor[i];
        if (ed->command == command) {
            PrivateData *data = (PrivateData*) eosFormsGetPrivateData(hForm);
            switch(ed->editorType) {

                case editorTypeNumeric: {
                    IncDecEditorParams *params = ed->params;
                    eosFormsIncDecSetMinValue(data->hNumericEditor, params->minValue);
                    eosFormsIncDecSetMaxValue(data->hNumericEditor, params->maxValue);
                    eosFormsIncDecSetDelta(data->hNumericEditor, params->delta);
                    eosFormsIncDecSetValue(data->hNumericEditor, 1500);
                    eosFormsIncDecSetTitle(data->hNumericEditor, ed->title);
                    eosFormsIncDecSetPrefix(data->hNumericEditor, params->prefix);
                    eosFormsIncDecSetSuffix(data->hNumericEditor, params->suffix);
                    eosFormsSetActiveForm(data->hNumericEditor);
                    break;
                }


                /*case editorTypeList: {
                    eosListParams listParams;
                    memset(&listParams, 0, sizeof(listParams));
                    listParams.hParent = hForm;
                    listParams.title = ed->title;
                    listParams.items = edgeNames;
                    listParams.numItems = 2;
                    return eosFormsCreateList(&listParams);
                }
                 * */
            }
        }
    }
}


static void processMenuNotification(eosMenuNotifyGetValue *notifyParams) {

    switch (notifyParams->command) {

        case CMD_SET_XJERK:
            notifyParams->itemValue = "17000";
            break;

        case CMD_SET_XMAXACCEL:
            notifyParams->itemValue = "25000";
            break;

        case CMD_SET_XMAXSPEED:
            notifyParams->itemValue = "30000";
            break;
    }
}