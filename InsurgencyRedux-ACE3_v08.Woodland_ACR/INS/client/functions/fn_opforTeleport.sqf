#include "script_component.hpp"
params ["_unit"];

openMap true;
//["Click on map to teleport.","hint",_admin,false,true] call BIS_fnc_MP;
hint "Click on map to teleport.";

sleep 0.5;
private ["_id"];
_id = [format["INS_opfor_teleport_%1",_unit], "onMapSingleClick", {
		_list2 = (getPos _this) nearEntities [["Man", "Air", "Car", "Tank"], 500];
		private _enemiesNear = false;
		{
			if (side (vehicle _x) == WEST) exitWith {
				_enemiesNear = true;
			};
		} count _list2;
		if (_enemiesNear) then {
			hint parseText "Enemies within 500m of your location<br/>You cannot teleport away";
			openMap false;
		} else {
			_list = _pos nearEntities [["Man", "Air", "Car", "Tank"], 500];
			private _enemy = false;
			{
				if (side (vehicle _x) == WEST) exitWith {
					_enemy = true;
				};
				false
			} count _list;

			if (_enemy) then {
				hint parseText "Enemies within 500m of the location<br/>Try another position";
			} else {
				_this setPos _pos;
				openMap false;
				hint "You will not be able to teleport for 1 minute";
			};
		};
}, _unit] call BIS_fnc_addStackedEventHandler;
waitUntil{!(visibleMap)};
[_id, "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
_unit setVariable ["INS_can_teleport",false];

[_unit] spawn {
	params ["_unit"];
	sleep 60;
	_unit setVariable ["INS_can_teleport",true];
	if (true) exitWith {};
};