#include "script_component.hpp"
params ["_unit"];

_unit setVariable ["XON_VEST", [false]];
_bomb = "Bo_GBU12_LGB" createVehicle (getPos _unit);
_bomb