#include "script_component.hpp"
params ["_target","_unit"];

_target setVariable ["XON_vest_count",((_target getVariable ["XON_vest_count",0]) + 1),true];

_actionID = _unit addAction ["<t color='#ff0000'>Detonate Vest</t>",FUNC(detonateVest),nil,1.5,true,true,"",""];
_unit setVariable ["XON_VEST",[true,_actionID],true];
_unit setCaptive true;
hintSilent parseText "Suicide vest equiped";
true
