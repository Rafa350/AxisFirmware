#ifndef __axisP2PMotion__
#define __axisP2PMotion__


#include "eos.h"
#include "HAL/halTMR.h"
#include "System/Collections/eosStaticArray.h"
#include "System/Core/eosSemaphore.h"
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
            struct AxisDataElement {        // Informacio de cada eix
            	Motor* motor;               // -Motor
            	int position;               // -Posicio actual
            	int maxPosition;            // -Posicio minima
            	int minPosition;            // -Posicio maxima
            };
            typedef eos::StaticArray<AxisDataElement, MOTION_MAX_AXIS> AxisData;
            struct MotionDataElement {      // Informacio de moviment de cada eix
            	int error;                  // -Error acumulat
            	int ddelta;                 // -Delta * 2
            	int inc;                    // -Increment
            };
            typedef eos::StaticArray<MotionDataElement, MOTION_MAX_AXIS> MotionData;

        private:
            int numAxis;                       // -Nombre d'eixos
            AxisData axisData;                 // -Dades de cada eix
            TMRHandler hTimer;                 // -Temporitzador
            int homingSpeed;                   // -Velocitat de homming
            int maxSpeed;                      // -Velocitat maxima
            int maxAcceleration;               // -Acceleracio maxima
            int jerk;                          // -Impuls
            bool busy;                         // -Ocupat en un moviment
            eos::Semaphore finished;           // -Semaforo per esperar el final

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
            int mainAxis;                      // -Eix principal (El que es mou a mes distancia)
            MotionData motionData;             // -Dades de moviment

            // Control de la generacio de pulsos
            //
            int widthCounter;                  // -Contador per amplada de puls

        public:
            P2PMotion(const Configuration& cfg);
            ~P2PMotion();

            void setMaxSpeed(int speed);
            void setHomingSpeed(int speed);
            void setMaxAcceleration(int acceleration);
            void setJerk(int jerk);
            void setMaxPosition(const Vector& position);
            void setMinPosition(const Vector& position);
            void setHome();

            bool isBusy() const { return busy; }
            int getAxis(int axis) const;
            Vector getPosition() const;

            void doHoming();
            void doMoveAbs(int axis, int position);
            void doMoveAbs(const Vector& position);
            void doMoveRel(const Vector& delta);
            void doMoveRel(int axis, int delta);
            void doMoveHome();
            void doStop();

            bool waitForFinish(unsigned blockTime);

        private:
            void timerInitialize();
            void timerStart();
            void timerStop();
            void start(const Vector& position);
            void stop();
            void loop();
            void motionStart(const Vector& position);
            bool motionStep();
            int computeMaxSpeed(const Vector& position) const;
            int computeMaxAcceleration(const Vector& position) const;

            static void tmrInterruptFunction(TMRHandler handler, void* param);
    };
}


#endif // __axisP2PMotion__
