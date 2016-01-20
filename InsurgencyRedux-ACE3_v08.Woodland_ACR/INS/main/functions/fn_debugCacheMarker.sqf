/*
 * Author: dixon13
 * Handles debug cache marker
 *
 * Arguments:
 * 0: CREATE or DELETE <STRING>
 * 1: Cache <OBJECT>
 * 2: Marker name if deleting <STRING> OPTIONAL
 *
 * Return value:
 * Marker name if creating <STRING> or true if deleting <BOOL>
 *
 * Public: No
*/
#include "script_component.hpp"
params["_option","_cache",["_mkr",""]];

TRACE_3("Cache Marker",_option,_cache,_mkr);

if (_option == "CREATE") then {
	_marker = [format["%1",round(random 1000)],(getPos _cache),"ICON",[1,1],"TYPE:","hd_dot","COLOR:","ColorBlack","TEXT:","CACHE","PERSIST"] call CBA_fnc_createMarker;
	missionNamespace setVariable [QGVAR(cacheMarker),_marker,true]; //Broadcast cache marker for debug to clients
	_marker;
} else {
	deleteMarker _mkr;
	true;
};