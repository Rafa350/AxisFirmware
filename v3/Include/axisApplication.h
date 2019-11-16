#ifndef __axisApplication__
#define __axisApplication__


#include "eos.h"
#include "System/eosApplication.h"


namespace axis {
    
    class AxisApplication: public eos::Application {

        protected:
            void onInitialize();

        public:
            AxisApplication();
    };
}


#endif
