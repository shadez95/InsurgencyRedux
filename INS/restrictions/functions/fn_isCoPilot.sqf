
params["_unit","_vehicle"];
if(isNull (objectParent _unit)) exitWith {false};

private ["_cfg","_turrets","_return","_trt"];

_cfg = configFile >> "CfgVehicles" >> typeOf(_vehicle);
_turrets = _cfg >> "turrets";
_return = false;

for "_i" from 0 to (count _turrets - 1) do {
	_trt = _turrets select _i;
	if(getNumber(_trt >> "iscopilot") == 1) exitWith {
		_return = (_vehicle turretUnit [_i] == _unit);
	};
};
_return;