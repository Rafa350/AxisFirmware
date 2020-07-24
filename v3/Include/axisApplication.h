#ifndef __axisApplication__
#define __axisApplication__


#include "eos.h"
#include "Services/eosDigInputService.h"
#include "Services/eosDigOutputService.h"
#include "System/eosApplication.h"
#include "System/eosCallbacks.h"
#include "axisMotor.h"
#include "axisMotion.h"
    

namespace eos {
 
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
            DigInput* sw1;
            
            DigOutputService* digOutputService;
            DigOutput* led3;
            
            //FsmService* fsmService;
            
            DigInputEventCallback sw1EventCallback;
            
        private:
            void initializeDigInputService();
            void initializeDigOutputService();
            void initializeMotionService();

        protected:
            void onInitialize();
            void sw1EventHandler(const DigInput::EventArgs& args);

        public:
            AxisApplication();
    };
}


#endif
