#ifndef __AX_MAINFORM_HPP
#define	__AX_MAINFORM_HPP


#include "Services/Forms/eosforms.hpp"


namespace axis {
    
    using namespace eos;
    
    class MainForm: public Form {
        
        public:
            MainForm(FormsService *service);
            ~MainForm();
            
            void onPaint(FormsDisplay *display);
    };
}


#endif

