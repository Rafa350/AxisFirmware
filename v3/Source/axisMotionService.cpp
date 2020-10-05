#include "eos.h"
#include "Services/eosService.h"

#include "axisMotionService.h"
#include "Services/eosDigOutputService.h"


using namespace eos;
using namespace axis;


/// ----------------------------------------------------------------------
/// \brief    Constructor.
/// \param    appplication: Aplicacio a la que pertany el servei.
/// \param    motion: El controlador de moviment.
///
MotionService::MotionService(
    Application* application,
    P2PMotion* motion):

    Service(application),
    commandQueue(commandQueueSize),
    motion(motion) {

    eosAssert(motion != nullptr);
}


/// ----------------------------------------------------------------------
/// \brief    Inicialitzacio del servei.
///
void MotionService::onInitialize() {

    motion->setHome();
}


/// ----------------------------------------------------------------------
/// \brief    Procesa les tasques del servei.
///
void MotionService::onTask() {

    Command cmd;
    while (commandQueue.pop(cmd, unsigned(-1))) {

        switch (cmd.opCode) {
            case OpCode::stop:
                cmdStop();
                break;

            case OpCode::moveHome:
                cmdMoveHome();
                break;

            case OpCode::moveAbs:
                cmdMoveAbs();
                break;

            case OpCode::moveRel:
                cmdMoveRel();
                break;
        }
    }
}


/// ----------------------------------------------------------------------
/// \brief    Procesa la comanda 'stop'.
///
void MotionService::cmdStop() {

    motion->doStop();
}


/// ----------------------------------------------------------------------
/// \brief    Procesa la comanda 'moveHome'.
///
void MotionService::cmdMoveHome() {

    motion->doMoveHome();
}


/// ----------------------------------------------------------------------
/// \brief    Procesa la comanda 'moveAbs'.
///
void MotionService::cmdMoveAbs() {

    motion->doMoveAbs(0, 32000);
}


/// ----------------------------------------------------------------------
/// \brief    Procesa la comanda 'moveRel'.
///
void MotionService::cmdMoveRel() {

    motion->doMoveRel(0, -32000);
}


/// ----------------------------------------------------------------------
/// \brief    Moviment a la posicio home.
///
void MotionService::moveHome() {

    Command cmd;
    cmd.opCode = OpCode::moveHome;

    commandQueue.push(cmd, unsigned(-1));
}


/// ----------------------------------------------------------------------
/// \brief    Moviment a la posicio absoluta especificada.
///
void MotionService::moveAbs(
    int x,
    int y,
    int z) {

    Command cmd;
    cmd.opCode = OpCode::moveAbs;

    commandQueue.push(cmd, unsigned(-1));
}


/// ----------------------------------------------------------------------
/// \brief    Moviment a la posicio relativaespecificada.
///
void MotionService::moveRel(
    int x,
    int y,
    int z) {

    Command cmd;
    cmd.opCode = OpCode::moveRel;

    commandQueue.push(cmd, unsigned(-1));
}


/// ----------------------------------------------------------------------
/// \brief    Para el moviment de forma inmediata.
///
void MotionService::stop() {

    Command cmd;
    cmd.opCode = OpCode::stop;

    commandQueue.push(cmd, unsigned(-1));
}