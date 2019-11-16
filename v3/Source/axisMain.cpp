#include "eos.h"
#include "axisApplication.h"


using namespace eos;
using namespace axis;


/// ----------------------------------------------------------------------
/// \brief Entrada a l'aplicacio
///
void appMain() {

	Application *app = new AxisApplication();
	app->run();
	delete app;
}
