#ifndef __AX_MOTOR_HPP
#define __AX_MOTOR_HPP


#include "eos.hpp"

#include <stdint.h>


namespace axis {
    
    enum class MotorDirection {
        forward = 0,
        backward = 1
    };
    
    enum class MotorStep {
        idle = 0,
        active = 1,
        toggle = 2
    };
    
    enum class MotorState {
        disabled = 0,
        enabled = 1
    };
    
    class Motor {
        private:
            uint8_t stepPin;
            uint8_t directionPin;
            uint8_t enablePin;
            uint8_t homePin;
            uint8_t limitPin;
        
        public:
            Motor(uint8_t stepPin, uint8_t directionPin, uint8_t enablePin, uint8_t homePin, uint8_t limitPin);
            void setState(MotorState state) const;
            void setDirection(MotorDirection direction) const;
            void setStep(MotorStep step) const;
            bool getHome() const;
            bool getLimit() const;
    };

}


#endif