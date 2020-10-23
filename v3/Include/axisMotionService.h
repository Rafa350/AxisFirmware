#ifndef __axisMotionService__
#define __axisMotionService__


#include "eos.h"
#include "Services/eosService.h"
#include "System/eosCallbacks.h"
#include "System/Core/eosQueue.h"

#include "axisP2PMotion.h"


namespace eos {

    class Application;
    class Task;
}


namespace axis {

    class MotionService: public eos::Service {
        private:
            enum class OpCode {
                stop,
                moveHome,
                moveAbs,
                moveRel
            };
            struct Command {
                OpCode opCode;
                int x;
                int y;
                int z;
            };
            typedef eos::Queue<Command> CommandQueue;

        public:
            struct EventArgs {
                MotionService* service;
                void* param;
            };
            typedef eos::ICallbackP1<const EventArgs&> IEventCallback;
            struct InitializeInfo {
            	P2PMotion* motion;
            	IEventCallback* eventCallback;
            	void* eventParam;
            };

        private:
            const unsigned commandQueueSize = MotionService_CommandQueueSize;
            CommandQueue commandQueue;
            P2PMotion* motion;
            IEventCallback* eventCallback;
            void* eventParam;

        private:
            void cmdStop();
            void cmdMoveHome();
            void cmdMoveAbs(int x, int y, int z);
            void cmdMoveRel(int dx, int dy, int dz);

        protected:
            void onInitialize() override;
            void onTask(eos::Task *task) override;

        public:
            MotionService(eos::Application *application, const InitializeInfo& info);

            void moveHome();
            void moveAbs(int x, int y, int z);
            void moveRel(int dx, int dy, int dz);
            void stop();
    };
}


#endif // __axisMotionService__
