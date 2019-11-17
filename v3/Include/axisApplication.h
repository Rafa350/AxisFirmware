#ifndef __axisApplication__
#define __axisApplication__


#include "eos.h"
#include "System/eosApplication.h"


namespace axis {
    
    class MotionService;
    
    class AxisApplication: public eos::Application {
        private:
            MotionService *motionService;

        protected:
            void onInitialize();

        public:
            AxisApplication();
    };
}


#endif
