
params[["_unit",objNull]];
if (side _unit == Civilian) then { [_unit] call INS_civilian_fnc_civKilledHandler; };
if ((side _unit == EAST) or (side _unit == RESISTANCE)) then { [_unit] call INS_main_fnc_intelHandler; };