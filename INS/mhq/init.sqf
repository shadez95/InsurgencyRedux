#include "script_component.hpp"
LOG(MSG_INIT);
private["_MHQ_tpSquad","_MHQ_arsenal","_teleportList"];

if (isNil "_teleportList") then { _teleportList = []; };
_fnc_addTeleportPT = {
	params ["_object","_str"];
	private _teleportList = missionNamespace getVariable [QGVAR(teleportList),[[],[]]];
	_teleportList params [["_objects",[]],["_actionIDs",[]]];
	
	_actionID = INS_teleportFlag addAction [format["%1",_str],{
		[(_this select 1), ((random 3) + 1), (random 360)] call BIS_fnc_relPos;
		(_this select 1) setPos (getPos(_this select 3));
	},_object];
	
	_objects pushBack _object;
	_actionIDs pushBack _actionID;
	_teleportList pushBack [_objects,_actionIDs];
	missionNamespace setVariable [QGVAR(teleportList),_teleportList,true];
};

_fnc_removeTeleportPT = {
	private ["_index"];
	params ["_object"];
	
	_teleportList = missionNamespace getVariable [QGVAR(teleportList),[[],[]]];
	_teleportList params ["_objects","_actionIDs"];
	{
		if (_object == _x) exitWith { _index = _forEachIndex; };
	} forEach _objects;
	_actionID = _actionIDs select _index;
	["INS_REMOVEACTION_EH",[INS_teleportFlag,_actionID]] call CBA_fnc_globalEvent;
	_objects deleteAt _index;
	_actionIDs deleteAt _index;
	missionNamespace setVariable [QGVAR(teleportList),[_objects,_actionIDs],true];
};

//Register global events
["INS_mhq_addAction", FUNC(addMHQAction)] call CBA_fnc_addEventHandler;
[QGVAR(add_tpPoint),_fnc_addTeleportPT] call CBA_fnc_addEventHandler;
[QGVAR(remove_tpPoint),_fnc_removeTeleportPT] call CBA_fnc_addEventHandler;

//Defining
GVAR(HMG1) = "B_HMG_01_high_F";
GVAR(GMG1) = "B_GMG_01_high_F";

//CHECK FOR MODS
if (GVARMAIN(rhsEnabled)) then { //RHS Mod Enabled?
	GVAR(HMG1) = "RHS_M2StaticMG_D";
	GVAR(GMG1) = "RHS_M2StaticMG_D";
};

/*if (isNil QGVAR(vehicleList)) then {
	GVAR(vehicleList) = [];
	{
		if (([str(_x), "INS_MHQ"] call CBA_fnc_find) >= 0) then { GVAR(vehicleList) pushBack _x; };
	} forEach vehicles;
};*/

TRACE_1("MHQ Vehicle List",GVAR(vehicleList));
if (count GVAR(vehicleList) == 0) exitWith { ERROR_WITH_TITLE("MHQ init","No MHQ vehicles exiting MHQ init"); };

{
	["INS_mhq_addAction",[_x,"<t color='#ff1111'>Deploy MHQ</t>",FUNC(deployMHQ),1,"!(_target getVariable ['deployed',true]) && !(_target getVariable ['removeAction',false])"]] call CBA_fnc_localEvent;
	["INS_mhq_addAction",[_x,"<t color='#ff1111'>Pack MHQ</t>",FUNC(packMHQ),1,"_target getVariable ['packed',false] && !(_target getVariable ['removeAction',false])"]] call CBA_fnc_localEvent;
} forEach GVAR(vehicleList);

publicVariable QGVAR(vehicleList);

_MHQ_tpSquad = missionNamespace getVariable ["INS_MHQ_tpSquad",1];
_MHQ_arsenal = missionNamespace getVariable ["INS_MHQ_Arsenal",1];

if (_MHQ_tpSquad == 1) then { MHQ_tpSquad = true; } else { MHQ_tpSquad = false; };
if (_MHQ_arsenal == 1) then { MHQ_arsenal = true; } else { MHQ_arsenal = false; };
publicVariable "MHQ_tpSquad";
publicVariable "MHQ_arsenal";

if !(isServer) exitWith { LOG("MHQ init - client finished and exiting... server init continuing"); };

if (isServer) then {
	_MHQcount = count GVAR(vehicleList);
	missionNamespace setVariable ["INS_mhq_vehicleCount",_MHQcount,true];
	TRACE_1("MHQ Vehicle List on the server",GVAR(vehicleList));
	{ [_x,_forEachIndex] call FUNC(mhqSetup); } forEach GVAR(vehicleList);
	missionNamespace setVariable ["INS_mhq_DONE",true,true];
};