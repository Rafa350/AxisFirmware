#ifndef __axisApplication__
#define __axisApplication__


#include "eos.h"
#include "System/eosApplication.h"
#include "axisMotor.h"
#include "axisMotion.h"


namespace axis {
    
    class MotionService;
    
    class AxisApplication: public eos::Application {
        private:
            Motor* xMotor;
            Motor* yMotor;
            Motor* zMotor;
            Motion* motion;
            MotionService* motionService;

        protected:
            void onInitialize();

        public:
            AxisApplication();
    };
}


#endif
