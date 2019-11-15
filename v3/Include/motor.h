#ifndef __motor__
#define __motor__


#include "eos.h"
#include "HAL/halGPIO.h"



namespace axis {
       
    class Motor {
        public:
            struct Configuration {
                GPIOPort stepPort;
                GPIOPin stepPin;
                GPIOPort directionPort;
                GPIOPin directionPin;
                GPIOPort enablePort;
                GPIOPin enablePin;
                GPIOPort homePort;
                GPIOPin homePin;
                GPIOPort limitPort;
                GPIOPin limitPin;
            };
            
            enum class Direction {
                forward = 0,
                backward = 1
            };

            enum class Step {
                idle = 0,
                active = 1,
                toggle = 2
            };

            enum class State {
                disabled = 0,
                enabled = 1
            };
        
        private:
            GPIOPort stepPort;
            GPIOPin stepPin;
            GPIOPort directionPort;
            GPIOPin directionPin;
            GPIOPort enablePort;
            GPIOPin enablePin;
            GPIOPort homePort;
            GPIOPin homePin;
            GPIOPort limitPort;
            GPIOPin limitPin;
        
        public:
            Motor(const Configuration *configuration);
            void setState(State state) const;
            void setDirection(Direction direction) const;
            void setStep(Step step) const;
            bool getHome() const;
            bool getLimit() const;
    };

}


#endif // __motor__