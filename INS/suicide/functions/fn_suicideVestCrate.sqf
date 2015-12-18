#include "script_component.hpp"
params ["_crate"];

_crate setVariable ["XON_vest_count",0,true];
_crate addAction ["Equip Vest",FUNC(equipVest),nil,1.5,true,true,"",QUOTE(!((_this getVariable 'XON_VEST') select 0) && ((_target getVariable 'XON_vest_count') < 2))];
_crate addAction ["Put Vest Back",FUNC(putVestBack),nil,1.5,true,true,"",QUOTE(((_this getVariable 'XON_VEST') select 0))];

[_crate] spawn {
	params ["_crate"];
	
	while {true} do {
		if ((_crate getVariable ["XON_vest_count",0]) == 2) then {
			sleep 1800;
			_crate setVariable ["XON_vest_count",0,true];
		};
	};
};