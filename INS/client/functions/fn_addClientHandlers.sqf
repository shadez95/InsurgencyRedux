/*#define DEBUG_MODE_FULL
#include "script_component.hpp"

params["_unit"];

if ((isPlayer _unit) && (side _unit == west)) then {
	_unit addEventHandler ["Killed", {
		params["_unit","_killer"];
		
		["INS_HINT_EH",["HINTSILENT",format["Blufor lives left: %1",([west,-1] call BIS_fnc_respawnTickets)]]] call CBA_fnc_globalEvent;
	}];
	
	_unit addEventHandler ["Respawn", {
		params["_unit","_corpse"];
		
		_unit addEventHandler ["Killed", {
			["INS_HINT_EH",["HINTSILENT",format["Blufor lives left: %1",([west,-1] call BIS_fnc_respawnTickets)]]] call CBA_fnc_globalEvent;
		}];
	}];
};*/