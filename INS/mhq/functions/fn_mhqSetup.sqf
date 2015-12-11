#include "script_component.hpp"

params[["_vehicle",objNull],["_index",0]];

//_vehicleName = vehicleVarName _vehicle;
//Below is code for MHQ workaround when using ALiVE - ***ALiVE renames vehicles***
//The variable below is set in the init.sqf
_vehicleName = _vehicle getVariable ["vehicleName","MHQ"];

[_vehicle,_vehicleName] spawn {
	private ["_mkr","_name","_nameArray"];
	params["_vehicle","_vehicleName"];
	TRACE_2("Vehicle mhq setup",_vehicle,_vehicleName);
	
	_mkr = createMarker [format["%1_mkr",_vehicleName],(position _vehicle)];
	_mkr setMarkerShape "ICON";
	_mkr setMarkerType "b_hq";
	_nameArray = _vehicleName splitString "INS_";
	if ((count _nameArray) > 1) then {
		_nameArray = _nameArray joinString "";
		_name = _nameArray;
	} else {
		_name = _nameArray select 0;
	};
	_mkr setMarkerText _name;
	_vehicle setVariable [QGVAR(markerText),_name,true];
	while {true} do {
		if !(alive _vehicle) exitWith { deleteMarker _mkr; };
		_mkr setMarkerPos (position _vehicle);
		sleep 2;
	};
};

_vehicle setVariable ["deployed1",false,true];
_vehicle setVariable ["deployed",false,true];