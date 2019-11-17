#include "eos.h"
#include "Services/eosService.h"

#include "axisMotionService.h"


using namespace eos;
using namespace axis;


MotionService::MotionService(
    Application *application,
    const Configuration *cfg): 
    
    Service(application),
    xMotor(cfg->xMotor),
    yMotor(cfg->yMotor),
    zMotor(cfg->zMotor) {    
}