/*
 * Author: dixon13
 * Creates a new cache
 *
 * Arguments:
 * 0: Position <ARRAY>
 *
 * Return value:
 * Cache <OBJECT>
 *
 * Public: No
*/
//#define DEBUG_MODE_FULL
#include "script_component.hpp"

params[["_pos",[0,0,0]]];
TRACE_1(QUOTE(FUNC(createCache)),_pos);
private["_cache"];

_cache = createVehicle ["Box_FIA_Wps_F", [-100,0,0], [], 0, "NONE"];// FIA Basic Weapons Cache
_cache allowDamage false; // Later this is set to true when the event handler is in place
_cache enableSimulationGlobal false;
_cache setPos _pos;
_cache enableSimulationGlobal true;
_cache;