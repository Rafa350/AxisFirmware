#ifndef __axisApplication__
#define __axisApplication__


#include "eos.h"
#include "Services/eosDigInputService.h"
#include "Services/eosDigOutputService.h"
#include "System/eosApplication.h"
#include "System/eosCallbacks.h"
#include "axisMotor.h"
#include "axisP2PMotion.h"


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
            P2PMotion* motion;
            MotionService* motionService;

            DigInputService* digInputService;
            DigInput* sw1;
#ifdef EXIST_SWITCHES_SW2
            DigInput* sw2;
#endif
#ifdef EXIST_SWITCHES_SW3
            DigInput* sw3;
#endif

            DigOutputService* digOutputService;
            DigOutput* led1;

            //FsmService* fsmService;

            DigInputEventCallback sw1EventCallback;
#ifdef EXIST_SWITCHES_SW2
            DigInputEventCallback sw2EventCallback;
#endif
#ifdef EXIST_SWITCHES_SW3
            DigInputEventCallback sw3EventCallback;
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
#ifdef EXIST_SWITCHES_SW3
            void sw3EventHandler(const DigInput::EventArgs& args);
#endif

        public:
            AxisApplication();
    };
}


#endif
