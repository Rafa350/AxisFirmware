#ifndef __axisMotionService__
#define __axisMotionService__


#include "eos.h"
#include "Services/eosService.h"

#include "axisMotor.h"


namespace eos {
    
    class Application;
}


namespace axis {
    
    class MotionService: public eos::Service {
        public:
            struct Configuration {
                Motor *xMotor;
                Motor *yMotor;
                Motor *zMotor;
            };
            
        private:
            Motor *xMotor;
            Motor *yMotor;
            Motor *zMotor;
            
        public:
            MotionService(eos::Application *application, const Configuration *cfg);
    };
}


#endif // __axisMotionService__