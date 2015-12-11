#include "script_component.hpp"
LOG(MSG_INIT);

INS_DEBUG = false;
TRACE_1("Insurgency Redux Debug",INS_DEBUG);
private["_fnc_INS_civKilled","_fnc_INS_serverFPS"];

if (hasInterface) then {
	waitUntil { !isNull player };
	TRACE_1("Checking to make sure you are you for JIP reasons",player);
	if (player != player) then {
		TRACE_1("Player still does not equal player",player);
		if (!isServer && (player != player)) then { waitUntil {player == player}; waitUntil {time > 10}; }; // 'player'
		TRACE_1("Player should now equal player no matter what",player);
	};
};

for "_i" from 0 to ((count paramsArray) - 1) do {
    missionNamespace setVariable [configName ((missionConfigFile/"Params") select _i), ARG_1(paramsArray,_i), true];
	LOG(FORMAT_3("INS Params-%1    %2 = %3", time, configName ((missionConfigFile/"Params") select _i), ARG_1(paramsArray,_i)));
};

if (isClass(configFile>>"CfgPatches">>"rhsusf_main")) then { //RHS Mod Enabled?
	GVARMAIN(rhsEnabled) = true;
} else { GVARMAIN(rhsEnabled) = false; };

//Define public variable event handlers for server FPS
/*if (isDedicated) then {
	//"INS_FPS" addPublicVariableEventHandler { // TODO:Possibly not working, need to test more on server
		params["_variable","_value"];
		//missionNamespace setVariable [QGVAR(serverFPS),diag_fps,true];
		INS_ClientInfo = [true,diag_fps];
		_ownerID = owner _value;
		_ownerID publicVariableClient "INS_ClientInfo";
	};
};*/

//Define local functions to register events with
_fnc_INS_civKilled = { systemChat format["%1 killed %2",name ARG_1(_this,1),name ARG_1(_this,0)]; };
_fnc_INS_serverFPS = {
	[-2, {
		if (isServer) then {
			INS_FPS = diag_fps;
			(owner _this) publicVariableClient "INS_FPS";
		};
		
		if (local _this) then {
			waitUntil { !(isNil "INS_FPS") };
			hintSilent format["Server FPS: %1",INS_FPS];
			INS_FPS = nil;
		};
	},(_this select 0)] call CBA_fnc_globalExecute;
};
_fnc_removeAction = {
	params ["_object","_actionID"];
	_object removeAction _actionID;
};

//Register events globally
["INS_CIVKILLED_EH", _fnc_INS_civKilled] call CBA_fnc_addEventHandler; //Civilian killed event handler
["INS_SERVERFPS_EH", _fnc_INS_serverFPS] call CBA_fnc_addEventHandler;
["INS_ENGINEOFF_EH", FUNC(engineOff)] call CBA_fnc_addEventHandler;
["INS_LOCKVEHICLE_EH", FUNC(lockVehicle)] call CBA_fnc_addEventHandler;
["INS_REMOVEACTION_EH", _fnc_removeAction] call CBA_fnc_addEventHandler;

//Execute server side modules
if (isServer) then { execVM QUOTE(PREFIX\COMPONENT\initServerCore.sqf); LOG("initServerCore spawned"); }; //This has to be on it's own thread

//Execute other modules
if ((missionNamespace getVariable ["INS_tickets",80]) != 0) then { INIT_MODULE(tickets); };
if ((missionNamespace getVariable ["INS_MHQ",1]) == 1) then { INIT_MODULE(mhq); };
if ((missionNamespace getVariable ["INS_Restrictions",1]) > 0) then { INIT_MODULE(restrictions); };

//Execute client side modules
//if !(local player) exitWith {};
if ((hasInterface) && (local player)) then {
	[player] INIT_MODULE(client);
};