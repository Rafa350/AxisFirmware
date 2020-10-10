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
    const InitParams& initParams):

    Service(application),
    commandQueue(commandQueueSize),
    motion(initParams.motion),
	eventCallback(initParams.eventCallback),
	eventParam(initParams.eventParam) {

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

    	// Notifica que la cua es buida, abans de processar la comanda,
    	// per donar la oportunitat a carregar-la.
    	//
    	if (commandQueue.isEmpty()) {
    		if (eventCallback != nullptr) {
				EventArgs args;
				args.service = this;
				args.param = eventParam;
				eventCallback->execute(args);
    		}
    	}

    	// Procesa la comanda
    	//
        switch (cmd.opCode) {
            case OpCode::stop:
                cmdStop();
                break;

            case OpCode::moveHome:
                cmdMoveHome();
                break;

            case OpCode::moveAbs:
                cmdMoveAbs(cmd.x, cmd.y, cmd.z);
                break;

            case OpCode::moveRel:
                cmdMoveRel(cmd.x, cmd.y, cmd.z);
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

    if (motion->waitForFinish(unsigned(-1)))
        motion->doMoveHome();
}


/// ----------------------------------------------------------------------
/// \brief    Procesa la comanda 'moveAbs'.
///
void MotionService::cmdMoveAbs(
    int x,
    int y,
    int z) {

    if (motion->waitForFinish(unsigned(-1))) {
        int v[3] = {x, y, z};
        motion->doMoveAbs(v);
    }
}


/// ----------------------------------------------------------------------
/// \brief    Procesa la comanda 'moveRel'.
///
void MotionService::cmdMoveRel(
    int dx,
    int dy,
    int dz) {

    if (motion->waitForFinish(unsigned(-1))) {
        int v[3] = {dx, dy, dz};
        motion->doMoveRel(v);
    }
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
    cmd.x = x;
    cmd.y = y;
    cmd.z = z;

    commandQueue.push(cmd, unsigned(-1));
}


/// ----------------------------------------------------------------------
/// \brief    Moviment a la posicio relativaespecificada.
///
void MotionService::moveRel(
    int dx,
    int dy,
    int dz) {

    Command cmd;
    cmd.opCode = OpCode::moveRel;
    cmd.x = dx;
    cmd.y = dy;
    cmd.z = dz;

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
