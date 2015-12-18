#include "script_component.hpp"

LOG(MSG_INIT);
if !(local player) exitWith { LOG("Player is not local eixiting suicide module"); };

if ((side player == EAST) || (side player == RESISTANCE)) then {
	_arr = [false];//<-- This is a work-around for below. Array acts weird when the array is in putted below with one element.
	player setVariable ["XON_VEST",_arr,true];
};