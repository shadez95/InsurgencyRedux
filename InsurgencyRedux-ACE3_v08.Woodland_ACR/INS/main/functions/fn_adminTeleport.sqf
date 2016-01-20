/*
 * Author: dixon13
 * Teleport Admin
 *
 * Arguments:
 * 0: Player <OBJECT>
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
//#define FILE __FILE__
//#define LINE __LINE__
//[FILE, LINE, format ['%1: _admin=%2', "Admin", if (isNil{_admin}) then {nil} else {_admin}]] call CBA_fnc_log;

openMap true;
["Click on map to teleport.","hint",_admin,false,true] call BIS_fnc_MP;

sleep 1;
private ["_id"];
_id = [format["%1",71 + random 1000], "onMapSingleClick", { _this setPos _pos; openMap false;}, _admin] call BIS_fnc_addStackedEventHandler;
waitUntil{!(visibleMap)};
[_id, "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
["","hintSilent",_admin,false,true] call BIS_fnc_MP;