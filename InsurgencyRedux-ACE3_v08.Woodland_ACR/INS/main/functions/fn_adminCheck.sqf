/*
 * Author: dixon13
 * Admin check
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
//#define DEBUG_MODE_FULL
#include "script_component.hpp"

params["_unit"];

//if (serverCommandAvailable "#kick") then {
	_action = ["INS_admin_TP","Teleport","",{[_unit] call INS_fnc_adminTeleport;},{serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
	[_unit, 1, ["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToClass;
	//[ACE_Player, 0] call ace_interact_menu_fnc_addMainAction;
	
//};