#include "UsbService.h"
#include "GenericTypedefs.h"
#include "HardwareProfile.h"
#include "sys/attribs.h"
#include "pic32mx_eth_sk/bsp_config.h"
#include "system/devcon/sys_devcon.h"
#include "peripheral/int/plib_int.h"
#include "peripheral/ports/plib_ports.h"
#include "usb/usb_common.h"
#include "driver/usb/drv_usb.h"
#include "usb/usb_chapter_9.h"
#include "usb/usb_device.h"
#include "usb/usb_device_hid.h"
#include "System/eosMemory.h"
#include "MotionService.h"


#define APP_USB_DEVICE_HID_INSTANCE         0
#define HID_RPT01_SIZE                      28

#define CMD_DO_MOVE          0x80       // Realitza un moviment
#define CMD_DO_HOME          0x81       // Mou els eixos al origen
#define CMD_DO_CALIBRATE     0x82       // Calibra els eixos i els deixa en el origen
#define CMD_DO_PAUSE         0x83       // Fa una pausa (Per separar moviments)
#define CMD_DO_HALT          0x8F       // Parada inmediata

// Comandes de consulta
//
#define CMD_GET_STATE        0x90       // Obte l'estat general
#define CMD_GET_LIMITERS     0x91       // Obte l'estat dels limitadors
#define CMD_GET_X            0x92       // Obte la posicio X
#define CMD_GET_Y            0x93       // Obte la posicio Y
#define CMD_GET_Z            0x94       // Obte la posicio Z
#define CMD_GET_AXIS         0x95       // Obte la posicio de tots els eixos

// Comandes de asignacio
//
#define CMD_SET_X            0xA0       // Asigna la posicio X
#define CMD_SET_Y            0xA1       // Asigna la posicio Y
#define CMD_SET_Z            0xA2       // Asigna la posicio Z
#define CMD_SET_JERK         0xA3       // Asigna el impuls
#define CMD_SET_ACCELERATION 0xA4       // Asigna la acceleracio
#define CMD_SET_SPEED        0xA5       // Asigna la velocitat

#define COMMAND_QUEUE_LENGTH     100

typedef struct {             // Comandes en la cua de comandes
    BYTE opCode;             // -Codi d'operacio
    union {
        UINT32 data;         // -Parametre generic
    };
} Command;

#define decodeINT16(p)            \
    (((INT32) (p)[0]) |           \
     ((INT32) (p)[1]) << 8)

#define decodeINT32(p)            \
    (((INT32) (p)[0]) |           \
     ((INT32) (p)[1]) << 8 |      \
     ((INT32) (p)[2]) << 16 |     \
     ((INT32) (p)[3]) << 24)

#define encodeINT16(p, v)         \
{                                 \
    (p)[0] = (BYTE)(v);           \
    (p)[1] = (BYTE)((v) >> 8);    \
}

#define encodeINT32(p, v)         \
{                                 \
    (p)[0] = (BYTE)(v);           \
    (p)[1] = (BYTE)((v) >> 8);    \
    (p)[2] = (BYTE)((v) >> 16);   \
    (p)[3] = (BYTE)((v) >> 24);   \
}

typedef struct __axUsbService {
    axMotionServiceHandle hMotionService;
    int position[3];
} axUsbService;


// Device descriptor
//
const USB_DEVICE_DESCRIPTOR fullSpeedDeviceDescriptor = {
    0x12,                       // Size of this descriptor in bytes
    USB_DESCRIPTOR_DEVICE,      // DEVICE descriptor type
    0x0200,                     // USB Spec Release Number in BCD format
    0x00,                       // Class Code
    0x00,                       // Subclass code
    0x00,                       // Protocol code
    USB_DEVICE_EP0_BUFFER_SIZE, // Max packet size for EP0, see usb_config.h
    0x04D8,                     // Vendor ID
    0x003F,                     // Product ID: Custom HID device demo
    0x0002,                     // Device release number in BCD format
    0x01,                       // Manufacturer string index
    0x02,                       // Product string index
    0x00,                       // Device serial number string index
    0x01                        // Number of possible configurations
};

// Configuration Descriptor
//
const uint8_t fullSpeedConfigurationDescriptor1[] = {

    // Configuration Descriptor Header
    //
    0x09,			                        			// Size of this descriptor in bytes
    USB_DESCRIPTOR_CONFIGURATION,                       // CONFIGURATION descriptor type
    0x29, 0x00,            	                        	// Total length of data for this cfg
    1,                                                  // Number of interfaces in this cfg
    1,                                                  // Index value of this configuration
    0,                                                  // Configuration string index
    USB_ATTRIBUTE_DEFAULT | USB_ATTRIBUTE_SELF_POWERED, // Attributes, see usb_chapter_9.h
    50,                                                 // Max power consumption (2X mA)

    // Interface Descriptor
    //
    0x09,						// Size of this descriptor in bytes
    USB_DESCRIPTOR_INTERFACE,   // Interface descriptor type
    0,                          // Interface Number
    0,                          // Alternate Setting Number
    2,                          // Number of endpoints in this intf
    USB_HID_CLASS_CODE,         // Class code
    0,     						// Subclass code
    0,     						// Protocol code
    0,                          // Interface string index

    // HID Descriptor
    //
    0x09,			    			// bLength           : Size of this descriptor in bytes
    USB_HID_DESCRIPTOR_TYPES_HID,   // bDescriptorType   : HID descriptor type
    0x11, 0x01,                     // bcdHID            : HID Spec Release Number in BCD format (1.11)
    0x00,                           // bCountryCode      : Country Code (0x00 for Not supported)
    0x01,                           // bNumDescriptors   : Number of class descriptors, see usbcfg.h
    USB_HID_DESCRIPTOR_TYPES_REPORT,// bDescriptorType   : Report descriptor type
    HID_RPT01_SIZE, 0x00,           // wDescriptorLength : Size of the report descriptor

    // Endpoint Descriptor
    //
    0x07,
    USB_DESCRIPTOR_ENDPOINT,        // Endpoint Descriptor
    0x1 | USB_EP_DIRECTION_IN,      // EndpointAddress
    USB_TRANSFER_TYPE_INTERRUPT,    // Attributes
    0x40, 0x00,                     // Size
    0x01,                           // Interval

    // Endpoint Descriptor
    //
    0x07,
    USB_DESCRIPTOR_ENDPOINT,        // Endpoint Descriptor
    0x1 | USB_EP_DIRECTION_OUT,     // EndpointAddress
    USB_TRANSFER_TYPE_INTERRUPT,    // Attributes
    0x40, 0x00,                     // Size
    0x01                            // Interval
};

// Language code string descriptor 0
//
const struct {
    uint8_t bLength;    // Length of this descriptor.
    uint8_t bDscType;   // String Descritpor type
    uint16_t string[1]; // String
}
sd000 = {
    sizeof(sd000),
    USB_DESCRIPTOR_STRING,
    {0x0409 }
};

// Manufacturer string descriptor 1
//
const struct {
    uint8_t bLength;    // Length of this descriptor.
    uint8_t bDscType;   // String Descritpor type
    uint16_t string[25];// String
}
sd001 = {
    sizeof(sd001),
    USB_DESCRIPTOR_STRING,
    {'M','i','c','r','o','c','h','i','p',' ',
    'T','e','c','h','n','o','l','o','g','y',' ','I','n','c','.'}
};

// Product string descriptor 2
//
const struct {
    uint8_t bLength;    // Length of this descriptor.
    uint8_t bDscType;   // String Descritpor type
    uint16_t string[28];// String
}
sd002 = {
    sizeof(sd002),
    USB_DESCRIPTOR_STRING,
    {'A','x','i','s','-','I',' ','P','i','c',
     '&','P','l','a','c','e',' ','S','M','D',
     ' ','M','a','c','h','i','n','e' }
};

// String descriptors table
//
USB_DEVICE_STRING_DESCRIPTORS_TABLE stringDescriptors[3] = {
    (const uint8_t *const) &sd000,
    (const uint8_t *const) &sd001,
    (const uint8_t *const) &sd002
};

// Configuration descriptors table
//
USB_DEVICE_CONFIGURATION_DESCRIPTORS_TABLE fullSpeedConfigDescSet[] = {
    fullSpeedConfigurationDescriptor1
};

// HID report descriptor
//
const uint8_t hid_rpt01[] = {
    0x06, 0x00, 0xFF,       // Usage Page = 0xFF00 (Vendor Defined Page 1)
    0x09, 0x01,             // Usage (Vendor Usage 1)
    0xA1, 0x01,             // Collection (Application)
    0x19, 0x01,             // Usage Minimum
    0x29, 0x40,             // Usage Maximum 	//64 input usages total (0x01 to 0x40)
    0x15, 0x01,             // Logical Minimum (data bytes in the report may have minimum value = 0x00)
    0x25, 0x40,      	    // Logical Maximum (data bytes in the report may have maximum value = 0x00FF = unsigned 255)
    0x75, 0x08,             // Report Size: 8-bit field size
    0x95, 0x40,             // Report Count: Make sixty-four 8-bit fields (the next time the parser hits an "Input", "Output", or "Feature" item)
    0x81, 0x00,             // Input (Data, Array, Abs): Instantiates input packet fields based on the above report size, count, logical min/max, and usage.
    0x19, 0x01,             // Usage Minimum
    0x29, 0x40,             // Usage Maximum 	//64 output usages total (0x01 to 0x40)
    0x91, 0x00,             // Output (Data, Array, Abs): Instantiates output packet fields.  Uses same report size and count as "Input" fields, since nothing new/different was specified to the parser since the "Input" item.
    0xC0                    // End Collection
};


/*******************************************
 * USB HID Function Driver Initialization
 * Data Structure.
 *******************************************/
USB_DEVICE_HID_INIT hidInit = {
    .hidReportDescriptorSize = sizeof(hid_rpt01),   // Size of the HID report
    .hidReportDescriptor = (uint8_t*) &hid_rpt01,   // Pointer to the report
    .queueSizeReportReceive = 1,                    // Size of receive queue size
    .queueSizeReportSend = 1,                       // Size of send queue size
};


/**************************************************
 * USB Device Layer Function Driver Registration
 * Table
 **************************************************/
const USB_DEVICE_FUNCTION_REGISTRATION_TABLE funcRegistrationTable[1] = {
    {
        .configurationValue = 1,                        // Configuration Descriptor Index.
        .driver = USB_DEVICE_HID_FUNCTION_DRIVER,       // HID APIs exposed to the device layer.
        .funcDriverIndex = 0,                           // Instance index of the HID function Driver
        .funcDriverInit = &hidInit,                     // HID Initialization data for this instance
        .interfaceNumber = 0,                           // Start interface number
        .numberOfInterfaces = 1,                        // Number of interfaces
        .speed = USB_SPEED_FULL|USB_SPEED_HIGH,         // Speed at which this function should operate
    }
};

/**************************************************
 * USB Device Layer Master Descriptor Table
 **************************************************/
const USB_DEVICE_MASTER_DESCRIPTOR usbMasterDescriptor = {
    &fullSpeedDeviceDescriptor,     /* Full speed descriptor */
    1,                              /* Total number of full speed configurations available */
    &fullSpeedConfigDescSet[0],     /* Pointer to array of full speed configurations descriptors*/

    NULL,                           /* High speed device desc is not supported*/
    0,                              /* Total number of high speed configurations available */
    NULL,                           /* Pointer to array of high speed configurations descriptors. Not supported*/

    3,                              /* Total number of string descriptors available */
    stringDescriptors,              /* Pointer to array of string descriptors */

    NULL,                           /* Pointer to full speed dev qualifier. Not supported */
    NULL,                           /* Pointer to high speed dev qualifier. Not supported */
};

SYS_MODULE_OBJ usbDevObject;
UINT8 __attribute__((aligned(512))) endpointTable[USB_DEVICE_ENDPOINT_TABLE_SIZE];
USB_DEVICE_INIT usbInitData = {
    .moduleInit = {SYS_MODULE_POWER_RUN_FULL},
    .usbID = USB_ID_1,
    .stopInIdle = false,
    .suspendInSleep = false,
    .endpointTable = endpointTable,
    .interruptSource = INT_SOURCE_USB_1,
    .registeredFuncCount = 1,
    .registeredFunctions = (USB_DEVICE_FUNCTION_REGISTRATION_TABLE*) funcRegistrationTable,
    .usbMasterDescriptor = (USB_DEVICE_MASTER_DESCRIPTOR*) &usbMasterDescriptor,
    .deviceSpeed = USB_SPEED_FULL
};


typedef enum {                              // Estat de la tasca
    APP_STATE_INIT,                         // -Inicialitzant
    APP_STATE_WAIT_FOR_CONFIGURATION,       // -En espera de configuracio
    APP_STATE_MAIN_TASK,                    // -En execucio
    APP_STATE_ERROR                         // -En error
} TaskState;

typedef struct {                            // Dades de la tasca
    USB_DEVICE_HANDLE usbDevHandle;         // -Handle del USB
    uint8_t receiveDataBuffer[64];          // -Buffer de recepcio
    uint8_t transmitDataBuffer[64];         // -Buffer de transmissio
    TaskState appState;                     // -Estat de la tasca
    bool deviceConfigured;                  // -Indicador de dispositiu configurat
    USB_DEVICE_HID_TRANSFER_HANDLE txTransferHandle;  // -Handle de transmissio
    USB_DEVICE_HID_TRANSFER_HANDLE rxTransferHandle;  // -Handle de recepcio
    uint8_t configurationValue;
    USB_SPEED usbSpeed;                     // -Velocitst del USB
    bool hidDataReceived;                   // -Indicador de dades rebudes
    bool hidDataTransmitted;                // -Indicador de dades transmeses
    uint8_t idleRate;
} TaskData;


TaskData taskData = {
    .usbDevHandle = USB_DEVICE_HANDLE_INVALID,
    .deviceConfigured = false,
    .txTransferHandle = USB_DEVICE_HID_TRANSFER_HANDLE_INVALID,
    .rxTransferHandle = USB_DEVICE_HID_TRANSFER_HANDLE_INVALID,
	.hidDataReceived = false,
	.hidDataTransmitted = true,
    .appState = APP_STATE_INIT
};


static void ParseReport(axUsbServiceHandle service, BYTE *report);
static void BuildReport(axUsbServiceHandle service, BYTE opCode, BYTE *report);


/*************************************************************************
 *
 *       Gestiona els events del USB-HID
 *
 *       Funcio:
 *           USB_DEVICE_HID_EVENT_RESPONSE APP_USBDeviceHIDEventHandler(
 *               USB_DEVICE_HID_INDEX iHID,
 *               USB_DEVICE_HID_EVENT event,
 *               void* eventData,
 *               uintptr_t userData)
 *
 *************************************************************************/

static USB_DEVICE_HID_EVENT_RESPONSE APP_USBDeviceHIDEventHandler(
    USB_DEVICE_HID_INDEX iHID, 
    USB_DEVICE_HID_EVENT event,
    void* eventData,
    uintptr_t userData) {

    USB_DEVICE_HID_EVENT_DATA_REPORT_SENT *reportSent;
    USB_DEVICE_HID_EVENT_DATA_REPORT_RECEIVED *reportReceived;

    switch (event) {

        case USB_DEVICE_HID_EVENT_REPORT_SENT:

            // The eventData parameter will be USB_DEVICE_HID_EVENT_REPORT_SENT
            // pointer type containing details about the report that was
            // sent
            //
            reportSent = (USB_DEVICE_HID_EVENT_DATA_REPORT_SENT*) eventData;
            if(reportSent->handle == taskData.txTransferHandle ) {
                
                // Transfer progressed.
                //
                taskData.hidDataTransmitted = true;
            }
            else {

                // This should never happen
                //
                while(1);
            }
            break;

        case USB_DEVICE_HID_EVENT_REPORT_RECEIVED:

            // The eventData parameter will be USB_DEVICE_HID_EVENT_REPORT_RECEIVED
            // pointer type containing details about the report that was
            // received
            //
            reportReceived = (USB_DEVICE_HID_EVENT_DATA_REPORT_RECEIVED*) eventData;
            if(reportReceived->handle == taskData.rxTransferHandle) {

                // Transfer progressed
                //
                taskData.hidDataReceived = true;
            }
            else {

                // This should never happen
                //
                while(1);
            }
            break;

        case USB_DEVICE_HID_EVENT_SET_IDLE:

            // For now we just accept this request as is. We acknowledge
            // this request using the USB_DEVICE_HID_ControlStatus()
            // function with a USB_DEVICE_CONTROL_STATUS_OK flag
            //
            USB_DEVICE_ControlStatus(taskData.usbDevHandle, USB_DEVICE_CONTROL_STATUS_OK);

            // Save Idle rate recieved from Host
            //
            taskData.idleRate = *(uint8_t*)eventData;
            break;

        case USB_DEVICE_HID_EVENT_GET_IDLE:

            // Host is requesting for Idle rate. Now send the Idle rate
            //
            USB_DEVICE_ControlSend(taskData.usbDevHandle, &(taskData.idleRate), 1);

            // On successfully reciveing Idle rate, the Host would acknowledge back with a
            // Zero Length packet. The HID function drvier returns an event
            // USB_DEVICE_HID_EVENT_CONTROL_TRANSFER_DATA_SENT to the application upon
            // receiving this Zero Length packet from Host
            //
            // USB_DEVICE_HID_EVENT_CONTROL_TRANSFER_DATA_SENT event indicates this control transfer
            // event is complete

            break;

        default:
            break;
    }

    return USB_DEVICE_HID_EVENT_RESPONSE_NONE;
}


/*************************************************************************
 *
 *       Gestiona els events del USB
 *
 *       Funcio:
 *           void APP_USBDeviceEventHandler(USB_DEVICE_EVENT event,
 *               void *eventData, uintptr_t context) 
 *
 **************************************************************************/

static void APP_USBDeviceEventHandler(
    USB_DEVICE_EVENT event,
    void *eventData,
    uintptr_t context) {

    switch (event) {

        case USB_DEVICE_EVENT_RESET:
        case USB_DEVICE_EVENT_DECONFIGURED:

            // Host has de configured the device or a bus reset has happened.
            // Device layer is going to de-initialize all function drivers.
            // Hence close handles to all function drivers (Only if they are
            // opened previously
            //
            taskData.deviceConfigured = false;
            taskData.appState = APP_STATE_WAIT_FOR_CONFIGURATION;
            break;

        case USB_DEVICE_EVENT_CONFIGURED:

            // Set the flag indicating device is configured
            //
            taskData.deviceConfigured = true;

            // Save the other details for later use
            //
            taskData.configurationValue = *((uint8_t *)eventData);
            taskData.usbSpeed = USB_DEVICE_ActiveSpeedGet(taskData.usbDevHandle);

            // Register application HID event handler
            //
            USB_DEVICE_HID_EventHandlerSet(APP_USB_DEVICE_HID_INSTANCE,
                APP_USBDeviceHIDEventHandler, (uintptr_t) NULL);

            break;

        case USB_DEVICE_EVENT_SUSPENDED:
            break;

        case USB_DEVICE_EVENT_RESUMED:
        case USB_DEVICE_EVENT_ERROR:
            break;

        default:
            break;
    }
}


/*************************************************************************
 *
 *       Inicialitza el servei
 *
 *       Funcio:
 *           axUsbServiceHandle axUsbServiceInitialize(
 *               axUsbServiceParams *params)
 *
 *       Entrada:
 *           params: Parametres d'inicialitzacio
 *
 *       Retorn:
 *           El handler del servei
 *
 *************************************************************************/

axUsbServiceHandle axUsbServiceInitialize(
    axUsbServiceParams *params) {

    axUsbServiceHandle hService = (axUsbServiceHandle) eosAlloc(sizeof(axUsbService));
    if (hService == NULL)
        return NULL;

    hService->position[0] = 0;
    hService->position[1] = 0;
    hService->position[2] = 0;
    hService->hMotionService = params->hMotionService;

    usbDevObject = USB_DEVICE_Initialize(USB_DEVICE_INDEX_0, (SYS_MODULE_INIT*) &usbInitData);
    PLIB_INT_VectorPrioritySet(INT_ID_0, INT_VECTOR_USB1, INT_PRIORITY_LEVEL3);
    PLIB_INT_VectorSubPrioritySet(INT_ID_0, INT_VECTOR_USB1, INT_SUBPRIORITY_LEVEL3);

    return hService;
}


/*************************************************************************
 *
 *       Bucle de proces de la tasca
 *
 *       Funcio:
 *           void axUusbServiceTask(
 *               axUsbServiceHandle hService)
 *
 *       Entrada:
 *           hService: Handler del servei
 *
 *************************************************************************/

void axUsbServiceTask(
    axUsbServiceHandle hService) {

    USB_DEVICE_Tasks(usbDevObject);

    switch (taskData.appState) {

        case APP_STATE_INIT:

            // Obre el dispositiu
            //
            taskData.usbDevHandle = USB_DEVICE_Open(
                USB_DEVICE_INDEX_0,
                DRV_IO_INTENT_READWRITE);

            if (taskData.usbDevHandle != USB_DEVICE_HANDLE_INVALID) {

                // Register a callback with device layer to get event
                // notification (for end point 0)
                //
                USB_DEVICE_EventHandlerSet(
                    taskData.usbDevHandle,
                    APP_USBDeviceEventHandler,
                    0);

                // Attach the device
                //
                USB_DEVICE_Attach(taskData.usbDevHandle);

                taskData.appState = APP_STATE_WAIT_FOR_CONFIGURATION;
            }
            break;

        case APP_STATE_WAIT_FOR_CONFIGURATION:

            if (taskData.deviceConfigured == true) {

                // Device is ready to run the main task
                //
                taskData.hidDataReceived = false;
                taskData.hidDataTransmitted = true;
                taskData.appState = APP_STATE_MAIN_TASK;

                // Genera una sol·licitut de recepcio
                //
                USB_DEVICE_HID_ReportReceive(
                    APP_USB_DEVICE_HID_INSTANCE,
                    &taskData.rxTransferHandle,
                    taskData.receiveDataBuffer,
                    sizeof(taskData.receiveDataBuffer));
            }
            break;

        case APP_STATE_MAIN_TASK:

            if (!taskData.deviceConfigured) {

                // No esta configurat, torna a intentar-ho
                //
                taskData.appState = APP_STATE_WAIT_FOR_CONFIGURATION;
            }

            else if (taskData.hidDataReceived) {

                // Procesa les comandes GET
                //
                if ((taskData.receiveDataBuffer[0] >= 0x90) &&
                    (taskData.receiveDataBuffer[0] <= 0x9F)) {

                    BuildReport(hService, taskData.receiveDataBuffer[0], taskData.transmitDataBuffer);

                    // Genera la sol·licitut de transmissio
                    //
                    taskData.hidDataTransmitted = false;
                    USB_DEVICE_HID_ReportSend(APP_USB_DEVICE_HID_INSTANCE,
                        &taskData.txTransferHandle, taskData.transmitDataBuffer,
                        sizeof(taskData.transmitDataBuffer));
                }

                // Procesa les comandes SET o DO
                //
                else
                    ParseReport(hService, taskData.receiveDataBuffer);

                // Genera una solicitut de recepcio
                //
                taskData.hidDataReceived = false;
                USB_DEVICE_HID_ReportReceive(APP_USB_DEVICE_HID_INSTANCE,
                    &taskData.rxTransferHandle, taskData.receiveDataBuffer,
                    sizeof(taskData.receiveDataBuffer));
            }
            break;

        case APP_STATE_ERROR:
            break;
    }
}


/*************************************************************************
 *
 *       Procesa les interrupcions
 *
 *       Funcio:
 *           void __ISR(_USB_1_VECTOR, ipl4) usb1InterruptService(void)
 *
 *************************************************************************/

void __ISR(_USB_1_VECTOR, IPL4SOFT) usb1InterruptService(void) {

    USB_DEVICE_Tasks_ISR(usbDevObject);
}


/*************************************************************************
 *
 *       Procesa el report
 *
 *       Funcio:
 *           void ParseReport(
 *               axUsbServiceHandle hService,
 *               BYTE *report)
 *
 *       Entrada:
 *           hService: Handler del servei
 *           report  : El report a procesar
 *
 *************************************************************************/

static void ParseReport(
    axUsbServiceHandle hService,
    BYTE *report) {

    int i = 0;
    while ((i < 64) && (report[i] != 0)) {

        Command command;

        command.opCode = report[i];
        i += sizeof(BYTE);

        switch (command.opCode) {
            case CMD_SET_X:
                hService->position[0] = decodeINT32(&report[i]);
                i += sizeof(INT32);
                break;

            case CMD_SET_Y:
                hService->position[1] = decodeINT32(&report[i]);
                i += sizeof(INT32);
                break;

            case CMD_SET_Z:
                hService->position[2] = decodeINT32(&report[i]);
                i += sizeof(INT32);
                break;
                
            case CMD_SET_JERK:
                axMotionServiceSetJerk(hService->hMotionService, decodeINT32(&report[i]));
                i += sizeof(INT32);
                break;

            case CMD_SET_ACCELERATION:
                axMotionServiceSetMaxAcceleration(hService->hMotionService, decodeINT32(&report[i]));
                i += sizeof(INT32);
                break;

            case CMD_SET_SPEED:
                axMotionServiceSetMaxSpeed(hService->hMotionService, decodeINT32(&report[i]));
                i += sizeof(INT32);
                break;

            case CMD_DO_MOVE:
                axMotionServiceDoMoveAbs(hService->hMotionService, hService->position);
                break;

            case CMD_DO_PAUSE:
                i += sizeof(INT32);
                break;
        }
    }
}


/*************************************************************************
 *
 *       Genera un report
 *
 *       Funcio:
 *           void BuildReport(
 *               axUsbServiceHandle hService,
 *               BYTE opCode,
 *               BYTE *report)
 *
 *       Entrada:
 *           service: Handler del servei
 *           opCode : Codi de la comanda
 *           report : Buffer on deixar el resultat
 *
 *************************************************************************/

static void BuildReport(
    axUsbServiceHandle hService,
    BYTE opCode,
    BYTE *report) {

    axMotionServiceHandle hMotionService = hService->hMotionService;

    report[0] = opCode;
    switch (opCode) {
        case CMD_GET_STATE:
            report[1] = 0x00;
            report[1] |= axMotionServiceIsBusy(hMotionService) ? 0x01 : 0x00;
            break;

        case CMD_GET_LIMITERS:
            break;
            
        case CMD_GET_X: 
            encodeINT32(&report[1], hService->position[0]);
            break;

        case CMD_GET_Y: 
            encodeINT32(&report[1], hService->position[1]);
            break;

        case CMD_GET_Z: {
            encodeINT32(&report[1], hService->position[2]);
            break;
        }

        case CMD_GET_AXIS: {
            encodeINT32(&report[1], hService->position[0]);
            encodeINT32(&report[5], hService->position[1]);
            encodeINT32(&report[9], hService->position[2]);
            break;
        }
    }
}