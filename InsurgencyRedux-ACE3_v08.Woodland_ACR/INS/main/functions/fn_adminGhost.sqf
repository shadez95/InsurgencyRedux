/*
 * Author: dixon13
 * Teleport Admin
 *
 * Arguments:
 * 0: Player <OBJECT>
 * 0: Toggle mode true = on, false = off <BOOL>
 *
 * Return value:
 * None
 *
 * Public: No
 */
#define DEBUG_MODE_FULL
#include "script_component.hpp"
params["_admin"];
TRACE_1("Admin",_admin);
if (isServer) then { _admin hideObjectGlobal !(_admin getVariable "GHOST"); _admin setVariable ["GHOST",!(_admin getVariable "GHOST")]};