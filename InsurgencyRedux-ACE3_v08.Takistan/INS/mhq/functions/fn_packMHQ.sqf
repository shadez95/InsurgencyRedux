#include "script_component.hpp"
params[["_HQ",objNull]];
private["_side","_sleep"];

_side = WEST;
_HQ setVariable ["removeAction",true,true];

[-1, {
	params[["_HQ",objNull],"_side"];

	[_side,"HQ"] sideChat format["%1 is being packed standby...",_HQ getVariable ["vehicleName","MHQ"]];
},[_HQ,_side]] call CBA_fnc_globalExecute;

//(_HQ getVariable "respawnPoint") call BIS_fnc_removeRespawnPosition; //Remove the respawn point
_respawnObj = _HQ getVariable ["respawnPoint",objNull];
[QGVAR(remove_tpPoint),[_respawnObj]] call CBA_fnc_globalEvent;

//DELETE THE OBJECTS
_objects = _HQ getVariable [QGVAR(objects),[objNull]];
_count = count _objects;
_sleep = (missionNamespace getVariable ["INS_MHQ_Time",30]) / _count;
{ deleteVehicle _x; sleep _sleep; } forEach _objects;
_HQ setVariable [QGVAR(objects),nil,true];

//LET EVERY JIP AND PLAYER KNOW ABOUT IT
_HQ setVariable ["packed",false,true];
_HQ setVariable ["deployed",false,true];
["INS_LOCKVEHICLE_EH",[_HQ,false]] call CBA_fnc_globalEvent;
_HQ setVariable ["removeAction",false,true];

[-1, {
	params[["_HQ",objNull],"_side"];

	[_side,"HQ"] sideChat format["%1 is packed...",_HQ getVariable ["vehicleName","MHQ"]];
},[_HQ,_side]] call CBA_fnc_globalExecute;
