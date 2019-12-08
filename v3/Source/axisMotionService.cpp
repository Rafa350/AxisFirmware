#include "eos.h"
#include "Services/eosService.h"

#include "axisMotionService.h"


using namespace eos;
using namespace axis;


MotionService::MotionService(
    Application* application,
    Motion* motion): 
    
    Service(application),
    motion(motion) {
}


void MotionService::onInitialize() {
    
}


void MotionService::onTask() {
    
}