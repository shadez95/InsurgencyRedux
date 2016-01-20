/*
teleport_MHQ.sqf
Written by dixon13 aka D.Begay 71st Special Operations Group
0 = [this] execVM "71SOGMHQ\teleport_MHQ.sqf"; <--- Put in vehicle's init
*/

waitUntil {!isNil "BIS_fnc_init"};

_object = _this select 0;
CamoNet = objNull;

teleportMHQ_fnc_titleText = {
	titleText[format["The MHQ is not deployed..."],"PLAIN DOWN"];
};

teleportMHQ_fnc_deployTo = {
	private["_caller","_mkrPos"];
	//_target = _this select 0;
	if !(local _caller) exitWith{};
	_caller = _this select 0;
	
	if (isNull CamoNet) then {
		[[],"teleportMHQ_fnc_titleText", _caller, false] call BIS_fnc_MP;
	} else {
		//_mkrPos = getMarkerPos "MHQ_MKR";
		_rdmDist = random 4;
		_rdmDir = random 360;
		_posTP = [CamoNet, _rdmDist, _rdmDir] call BIS_fnc_relPos;
		_caller setPos _posTP;
	};
};

_object addAction ["<t color='#ff1111'>Deploy to MHQ</t>",{
            teleportMHQ_fnc_deployTo = (_this select 3) select 0; [(_this select 1)] call teleportMHQ_fnc_deployTo;
        },[teleportMHQ_fnc_deployTo],0,true,true,"",""];