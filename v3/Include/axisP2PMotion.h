#ifndef __axisP2PMotion__
#define __axisP2PMotion__


#include "eos.h"
#include "HAL/halTMR.h"
#include "System/Collections/eosStaticArray.h"
#include "axisMotor.h"


#ifndef MOTION_MAX_AXIS
#define MOTION_MAX_AXIS 3
#endif


namespace axis {

    class P2PMotion {
        public:
            typedef eos::StaticArray<Motor*, MOTION_MAX_AXIS> Motors;
            typedef eos::StaticArray<int, MOTION_MAX_AXIS> Vector;
            struct Configuration {
                int numAxis;
                Motors motors;
                TMRHandler hTimer;
            };

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
            Configuration cfg;
            Vector axisMax;                    // -Valor maxim de cada eix
            Vector axisMin;                    // -Valor minim de cada eix
            Vector axisPos;                    // -Posicio de cada eix
            int maxSpeed;                      // -Velocitat maxima
            int maxAcceleration;               // -Acceleracio maxima
            int jerk;                          // -Impuls
            bool busy;                         // -Ocupat en un moviment
            //BlockQueue queue;                // -Cua de blocs
            //Block* lastBlock;                // -Ultim bloc afeigit
            //Block* currentBlock;             // -Blocc actual

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
            Vector error;                      // -Error acumulat
            Vector ddelta;                     // -Deltas * 2
            Vector inc;                        // -Increments dels eixos per cada pas

        public:
            P2PMotion(const Configuration& cfg);
            ~P2PMotion();

            void setMaxSpeed(int speed);
            void setMaxAcceleration(int acceleration);
            void setJerk(int jerk);
            void setMaxPosition(const Vector& position);
            void setMinPosition(const Vector& position);
            void setHome();

            bool isBusy() const { return busy; }
            int getAxis(int axis) const;
            Vector getPosition() const;

            void doMoveAbs(int axis, int position);
            void doMoveAbs(const Vector& position);
            void doMoveRel(const Vector& delta);
            void doMoveRel(int axis, int delta);
            void doMoveHome();
            void doStop();

        private:
            void timerInitialize();
            void timerStart();
            void timerStop();
            void start(const Vector& position);
            void stop();
            void loop();

            static void tmrInterruptFunction(TMRHandler handler, void* param);
    };
}


#endif // __axisP2PMotion__
