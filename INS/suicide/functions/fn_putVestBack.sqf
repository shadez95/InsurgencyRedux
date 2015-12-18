#include "script_component.hpp"
params ["_target","_unit"];

_target setVariable ["XON_vest_count",(_target getVariable ["XON_vest_count",1] - 1),true];

_unit removeAction ((_unit getVariable ["XON_VEST",[true,-1]]) select 1);
_unit setVariable ["XON_VEST",[false],true];
_unit setCaptive false;
true