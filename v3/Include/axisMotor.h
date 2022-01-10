#ifndef __axisMotor__
#define __axisMotor__


#include "eos.h"
#include "HAL/halGPIO.h"



namespace axis {

    class Motor {
        public:
            struct Configuration {
                halGPIOPort stepPort;
                halGPIOPin stepPin;
                halGPIOPort directionPort;
                halGPIOPin directionPin;
                halGPIOPort enablePort;
                halGPIOPin enablePin;
                halGPIOPort homePort;
                halGPIOPin homePin;
                halGPIOPort limitPort;
                halGPIOPin limitPin;
                int maxJerk;
                int maxAcceleration;
                int maxSpeed;
                int stepsByRev;
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

            inline int getMaxJerk() const { return cfg.maxJerk; }
            inline int getMaxSpeed() const { return cfg.maxSpeed; }
            inline int getMaxAcceleration() const { return cfg.maxAcceleration; }
            inline int getStepsByRev() const { return cfg.stepsByRev; }

        private:
            void initialize();
    };

}


#endif // __axisMotor__
