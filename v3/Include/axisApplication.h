#ifndef __axisApplication__
#define __axisApplication__


#include "eos.h"
#include "Services/eosDigInputService.h"
#include "System/eosApplication.h"
#include "System/eosCallbacks.h"
#include "axisMotor.h"
#include "axisMotion.h"
    

namespace eos {
 
    class DigOutputService;
    class FsmService;
}


namespace axis {

    class MotionService;
    
    using namespace eos;
    
    class AxisApplication: public Application {
        private:
            typedef CallbackP1<AxisApplication, const DigInput::EventArgs&> DigInputEventCallback;
            
        private:
            Motor* xMotor;
            Motor* yMotor;
            Motor* zMotor;
            Motion* motion;
            MotionService* motionService;
            DigInputService* digInputService;
            DigOutputService* digOutputService;
            FsmService* fsmService;
            
            DigInputEventCallback digInputEventCallback;

        protected:
            void onInitialize();
            void digInputEventHandler(const DigInput::EventArgs& args);

        public:
            AxisApplication();
    };
}


#endif
