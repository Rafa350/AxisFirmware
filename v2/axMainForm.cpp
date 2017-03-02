#include "axMainForm.hpp"


using namespace axis;
using namespace eos;


/// ----------------------------------------------------------------------
/// \brief Constructor.
/// \param service: Handler del servei de gestio de forms.
/// \param parent: El form pare.
///
MainForm::MainForm(
    FormsService *service):
    
    Form(service, nullptr) {
    
}


/// ----------------------------------------------------------------------
/// \brief Destructor.
///
MainForm::~MainForm(){
    
}


/// ----------------------------------------------------------------------
/// \brief Es crida quan cal redibuixar el form.
/// \param display: Handler del display.
///
void MainForm::onPaint(
    FormsDisplay *display) {
    
    display->setColor(RGB(255, 0, 0));
    
    display->drawLine(0, 1, 250 - 1, 1);

    display->drawRectangle(10, 10, 240 - 20, 50);
    display->drawRectangle(10, 70, 240 - 20, 50);
    display->drawRectangle(10, 130, 240 - 20, 50);
    
    display->drawText(15, 15,  "X: 000.0000", 0, -1);
    display->drawText(15, 75,  "Y: 000.0000", 0, -1);
    display->drawText(15, 135, "Z: 000.0000", 0, -1);
}