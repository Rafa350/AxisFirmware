#include "eos.h"
#include "System/eosApplication.h"
#include "Services/eosAppLoop.h"
#include "Controllers/Display/eosDisplay.h"
#include "Controllers/Display/Drivers/eosILI9341.h"
#include "HAL/halGPIO.h"
#include "motor.h"
#include "motion.h"
#include "axMainForm.h"


using namespace eos;
using namespace axis;


#define AXIS_X         0
#define AXIS_Y         1
#define AXIS_Z         2
#define AXIS_R         3

#if defined(HARDWARE_PINGUINO)
#define AXIS_X_STEP    HAL_GPIO_PIN3  // RB2 (CON2-15)
#define AXIS_X_DIR     HAL_GPIO_PIN15 // RD2 (CON2-5)
#define AXIS_X_ENA     0xFF
#define AXIS_X_HOME    0xFF
#define AXIS_X_LIMIT   0xFF

#define AXIS_Y_STEP    HAL_GPIO_PIN16 // RD3
#define AXIS_Y_DIR     HAL_GPIO_PIN10 // RB12
#define AXIS_Y_ENA     0xFF
#define AXIS_Y_HOME    0xFF
#define AXIS_Y_LIMIT   0xFF

#define AXIS_Z_STEP    HAL_GPIO_PIN19 // RD6
#define AXIS_Z_DIR     HAL_GPIO_PIN20 // RD7
#define AXIS_Z_ENA     0xFF
#define AXIS_Z_HOME    0xFF
#define AXIS_Z_LIMIT   0xFF

#define AXIS_R_STEP    HAL_GPIO_PIN21 // RD8
#define AXIS_R_DIR     HAL_GPIO_PIN22 // RD11
#define AXIS_R_ENA     0xFF
#define AXIS_R_HOME    0xFF
#define AXIS_R_LIMIT   0xFF
#endif

#define STEPS_BY_REV   3200


class MyAppLoopService: public AppLoopService {
    private:
        Motor *motors[4];
        Motion *motion;
        MainForm *mainForm;
    public:
        MyAppLoopService(Application *application): AppLoopService(application) {}
    protected:
        void setup();
        void loop();
        void doHoming();
};


class MyApplication: public Application {
    private:
        MyAppLoopService *loopService;
        
        IDisplayDriver *displayDriver;
        Display *display;
        MessageQueue *messageQueue;
        FormsDisplay *formsDisplay;
        FormsService *formsService;
        MainForm *mainForm;
    public:
        MyApplication();
};


/// ----------------------------------------------------------------------
/// \brief Constructor
///
MyApplication::MyApplication() {
    
    // Crea el servei de l'aplicacio
    //
    loopService = new MyAppLoopService(this);

    // Crea el servei de forms
    //
    messageQueue = new MessageQueue(20);
    
    displayDriver = new ILI9341_Driver();
    displayDriver->initialize();
    displayDriver->setOrientation(Orientation::rotate180);
    
    display = new Display(displayDriver);

    formsDisplay = new FormsDisplay(display);
    formsDisplay->clear(RGB(0, 0, 255));
    
    formsService = new FormsService(this, messageQueue, formsDisplay);

    mainForm = new MainForm(formsService);
    mainForm->activate();
}


/// ----------------------------------------------------------------------
/// \brief Inicialitzacio
///
void MyAppLoopService::setup() {
    
    initLED1();
    
    // Crea els controladors dels motors dels eixos
    //
    motors[0] = new Motor(AXIS_X_STEP, AXIS_X_DIR, AXIS_X_ENA, AXIS_X_HOME, AXIS_X_LIMIT);
    motors[1] = new Motor(AXIS_Y_STEP, AXIS_Y_DIR, AXIS_Y_ENA, AXIS_Y_HOME, AXIS_Y_LIMIT);
    motors[2] = new Motor(AXIS_Z_STEP, AXIS_Z_DIR, AXIS_Z_ENA, AXIS_Z_HOME, AXIS_Z_LIMIT);
    motors[3] = new Motor(AXIS_R_STEP, AXIS_R_DIR, AXIS_R_ENA, 0xFF, 0xFF);
       
    // Crea el controlador de moviment
    //
    motion = new Motion(sizeof(motors) / sizeof(motors[0]), motors);
    motion->setJerk(600000);
    motion->setMaxAcceleration(1500000);
    motion->setMaxSpeed(15 * STEPS_BY_REV);
}


/// ----------------------------------------------------------------------
/// \brief Bucle del proces principal
///
void MyAppLoopService::loop() {
    
    unsigned state = 0;
    int position[4];
    bool forward = true;
    int distance = STEPS_BY_REV * 8;
    
    position[1] = 0;
    position[2] = 0;
    position[3] = 0;

    while (true) {
        switch (state) {
            case 0:
                position[0] = forward ? distance : 0;
                forward = !forward;
                motion->doMoveAbs(position);
                state = 1;
                break;
                
            case 1:
                if (!motion->isBusy())
                    state = 0;
                break;
        }   
    }
}


void MyAppLoopService::doHoming() {
    
    // Busca el origen del eix X
    //
    motion->setMaxSpeed(1 * STEPS_BY_REV);    
    motion->doMoveRelAxis(AXIS_X, -10000);
    
    //while (!xhome)
    //    continue;
}



/// ----------------------------------------------------------------------
/// \brief Inicia de l'aplicacio.
/// \param argc: Numero d'arguments.
/// \param argv: Llista d'arguments.
///
int main(
    int argc, 
    char **argv) {

    MyApplication *app = new MyApplication();
    app->execute();
    delete app;
    
    return 0;
}

