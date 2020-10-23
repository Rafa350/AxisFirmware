#ifndef __axisApplication__
#define __axisApplication__


#include "eos.h"
#include "Services/eosDigInputService.h"
#include "Services/eosDigOutputService.h"
#include "Services/eosUARTService.h"
#include "System/eosApplication.h"
#include "System/eosCallbacks.h"
#include "axisMotionService.h"
#include "axisMotor.h"
#include "axisP2PMotion.h"


namespace eos {

    class FsmService;
}


namespace axis {

    using namespace eos;

    class AxisApplication: public Application {
        private:
            typedef CallbackP1<AxisApplication, const DigInput::EventArgs&> DigInputEventCallback;
            typedef CallbackP1<AxisApplication, const MotionService::EventArgs&> MotionServiceEventCallback;

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

            UARTService* hUARTService;

            //FsmService* fsmService;

            DigInputEventCallback sw1EventCallback;
#ifdef EXIST_SWITCHES_SW2
            DigInputEventCallback sw2EventCallback;
#endif
#ifdef EXIST_SWITCHES_SW3
            DigInputEventCallback sw3EventCallback;
#endif
            MotionServiceEventCallback motionServiceEventCallback;

        private:
            void configureDigInputService();
            void configureDigOutputService();
            void configureMotionService();
            void configuraUARTService();

        protected:
            void onInitialize();
            void motionServiceEventHandler(const MotionService::EventArgs& args);
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
