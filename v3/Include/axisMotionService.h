#ifndef __axisMotionService__
#define __axisMotionService__


#include "eos.h"
#include "Services/eosService.h"

#include "axisMotion.h"


namespace eos {
    
    class Application;
}


namespace axis {
    
    class MotionService: public eos::Service {
        private:
            Motion* motion;
            
        protected:
            void onInitialize() override;
            void onTask() override;
            
        public:
            MotionService(eos::Application *application, Motion* motion);
    };
}


#endif // __axisMotionService__