#ifndef __axisMotionService__
#define __axisMotionService__


#include "eos.h"
#include "Services/eosService.h"

#include "axisMotor.h"


namespace axis {
    
    class MotionService: public eos::Service {
        private:
            Motor motors[3];
    };
}


#endif // __axisMotionService__