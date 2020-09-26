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
#ifdef EXIST_SWITCHES_SW2
            DigInput* sw2;
#endif
            
            DigOutputService* digOutputService;
            DigOutput* led3;
            
            //FsmService* fsmService;
            
            DigInputEventCallback sw1EventCallback;
#ifdef EXIST_SWITCHES_SW2
            DigInputEventCallback sw2EventCallback;
#endif
            
        private:
            void configureDigInputService();
            void configureDigOutputService();
            void configureMotionService();

        protected:
            void onInitialize();
            void sw1EventHandler(const DigInput::EventArgs& args);
#ifdef EXIST_SWITCHES_SW2
            void sw2EventHandler(const DigInput::EventArgs& args);
#endif

        public:
            AxisApplication();
    };
}


#endif
