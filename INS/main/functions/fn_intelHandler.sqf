
params ["_unit"];
_unit addEventHandler["Killed", {
	params["_unit","_killer"];
	if (_unit != _killer) then {
		if (isPlayer _unit) then {
			_intelObject = [_unit] call INS_main_fnc_createIntelObject;
			[_intelObject] call INS_main_fnc_addActionToIntel;
		} else {
			if ((missionNamespace getVariable ["INS_DropRate",75]) > (random 100)) then {
				_intelObject = [_unit] call INS_main_fnc_createIntelObject;
				[_intelObject] call INS_main_fnc_addActionToIntel;
			};
		};
	};
}];