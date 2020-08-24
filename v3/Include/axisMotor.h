#ifndef __axisMotor__
#define __axisMotor__


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
                int maxJerk;
                int maxAccel;
                int maxSpeed;
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
            Configuration cfg;
        
        public:
            Motor(const Configuration& cfg);
            void setState(State state) const;
            void setDirection(Direction direction) const;
            void setStep(Step step) const;
            bool getHome() const;
            bool getLimit() const;
            
        private:
            void initialize();
    };

}


#endif // __axisMotor__