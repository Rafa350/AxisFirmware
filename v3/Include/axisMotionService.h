#ifndef __axisMotionService__
#define __axisMotionService__


#include "eos.h"
#include "Services/eosService.h"
#include "System/Core/eosQueue.h"

#include "axisP2PMotion.h"


namespace eos {

    class Application;
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
            };
            typedef eos::Queue<Command> CommandQueue;

        private:
            const unsigned commandQueueSize = 10;
            CommandQueue commandQueue;
            P2PMotion* motion;

        private:
            void cmdStop();
            void cmdMoveHome();
            void cmdMoveAbs();
            void cmdMoveRel();

        protected:
            void onInitialize() override;
            void onTask() override;

        public:
            MotionService(eos::Application *application, P2PMotion* motion);

            void moveHome();
            void moveAbs(int x, int y, int z);
            void moveRel(int dx, int dy, int dz);
            void stop();
    };
}


#endif // __axisMotionService__