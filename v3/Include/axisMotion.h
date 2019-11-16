#ifndef __axisMotion__
#define __axisMotion__


#include "eos.h"
#include "axisMotor.h"


#ifndef MAX_AXIS
#define MAX_AXIS        6    // Numero maxim d'eixos soportats
#endif


namespace axis {
    
    class Motion {
        private:
            enum class Phase {                 // Fase del perfil 'S'
                phase_I,
                phase_II,
                phase_III,
                phase_IV,
                phase_V,
                phase_VI,
                phase_VII
            };
            
        private:
            int numAxis;                       // -Mumero d'eixos
            Motor *motors[MAX_AXIS];           // -Motors dels eixos
            int axisMax[MAX_AXIS];             // -Valor maxim de cada eix
            int axisMin[MAX_AXIS];             // -Valor minim de cada eix
            int axisPos[MAX_AXIS];             // -Posicio de cada eix
            int maxSpeed;                      // -Velocitat maxima
            int maxAcceleration;               // -Acceleracio maxima
            int jerk;                          // -Impuls
            bool busy;                         // -Ocupat en un moviment
            
            // Control del perfil de velocitat
            //
            Phase phase;                       // -Fase del perfil en la que es troba
            int64_t timeSAccel;                // -Temps d'increment o decrement de l'acceleracio
            int64_t timeSConst;                // -Temps d'acceleracio constant
            int64_t stepSFlat;                 // -Distancia d'acceleracio zero
            int64_t count;                     // -Contador de distancia/pasos
            int64_t curJerk;                   // -Impuls actual
            int64_t curAcceleration;           // -Acceleracio actual
            int64_t curSpeed;                  // -Velocitat actual
            int64_t curPosition;               // -Posicio actual            

            // Control de la trajectoria
            //
            int stepNumber;                    // -Numero de pasos a realitzar
            int stepCounter;                   // -Contador de pasos realitzats
            int mainAxis;                      // -Eix principal (El mes llarg)
            int error[MAX_AXIS];               // -Error acumulat
            int ddelta[MAX_AXIS];              // -Deltas * 2
            int inc[MAX_AXIS];                 // -Increments dels eixos per cada pas
            
        public:
            Motion(int numAxis, Motor *motors[]);
            ~Motion();

            void setMaxSpeed(int speed);
            void setMaxAcceleration(int acceleration);
            void setJerk(int jerk);
            void setMaxPosition(int position[]);
            void setMinPosition(int position[]);
            void setHome();

            bool isBusy() const { return busy; }
            int getAxis(int axis) const;

            void doMoveAbsAxis(int axis, int position);
            void doMoveRelAxis(int axis, int delta);
            void doMoveAbs(int position[]);
            void doMoveRel(int delta[]);
            void doMoveHome();
            void doStop();
            
        private:            
            void timerInitialize();
            void timerStart();
            void timerStop();
            void start(int position[]);
            void stop();
            void loop();
            static void timerInterruptCallback(uint8_t timer, void *param);
    };
}


#endif // __axisMotion__
