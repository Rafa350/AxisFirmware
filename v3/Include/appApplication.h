#ifndef __appApplication__
#define __appApplication__


#include "eos.h"
#include "System/eosApplication.h"


namespace app {
    
    class MyApplication: public eos::Application {

        protected:
            void onInitialize();

        public:
            MyApplication();
    };
}


#endif
