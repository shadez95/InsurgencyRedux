#include "script_component.hpp"
LOG(MSG_INIT);

//Define local functions to register events with
private _fnc_INS_hint = { [(_this select 0),(_this select 1)] call EFUNC(main,hint); };

//Register events
["INS_HINT_EH", _fnc_INS_hint] call CBA_fnc_addEventHandler; //Hint event handler

//Check respawn module
//if (ARG_1(paramsArray,4) != 0) then { [_unit] call FUNC(addClientHandlers); }; // <-- Moved to onPlayerKilled.sqf

if (!(profileNamespace getVariable ["INS_firstTime",false])) then {
	profileNamespace setVariable ["INS_firstTime",true];
	[] spawn {
		sleep 2;
		closeDialog 0;
		_return = [
			parseText "New to the server or new to the game mode? Click the 'Field Manual' button below to learn more. The Insurgency Redux Field Manual can be found in the briefing, along with other information.<br/> <t size='0.8'>**This message will not display again**</t>",
			"Welcome to Insurgency Redux",
			"Field Manual",
			"Continue"] call BIS_fnc_GUImessage;
		if (_return) then { (findDisplay 46) createDisplay "RscDisplayFieldManual"; };
	};
};

waitUntil {(missionNamespace getVariable ["INS_mhq_done",false]) && ((missionNamespace getVariable ["INS_mhq_vehicleCount",0]) == (missionNamespace getVariable ["INS_mhq_count",0]))};

// ----------------------- Below, the markers need to be adjusted when porting to a map ----------------------

if (side player == WEST) then {
	LOG("CLIENT - Player is side WEST");
	{
		if (([str(_x), "INS_noOpfor"] call CBA_fnc_find) >= 0) then { deleteMarkerLocal _x; TRACE_1("CLIENT - Deleteing marker",_x); };
		false
	} count allMapMarkers;
	
	//Create diary for cache and lives
	//_unit createDiarySubject ["INS_DIARY","Insurgency Redux"];
	LOG("CLIENT - Creating briefing for client");
	_diaryCache = player createDiaryRecord ["Diary", ["InsurgencyRedux",
	QUOTE(<br/>INSURGENCY REDUX<br/>
	============================<br/><br/>
	To see how many caches are left <execute expression = QUOTE(QUOTE([player] call FUNC(cacheDiary))) >CLICK HERE</execute><br/><br/>
	To see how many blufor lives are left <execute expression = QUOTE(QUOTE([player] call FUNC(livesCheck))) >CLICK HERE</execute><br/><br/>
	To see what the server FPS is <execute expression = QUOTE(QUOTE([player] call FUNC(serverFPS))) >CLICK HERE</execute><br/><br/><br/>
	Radio SOP:<br/>
	Channel 1: 71 - Army Squad<br/>
	Channel 2: 72 - Marine Squad<br/>
	Channel 3: 73 - MARSOC Squad<br/>
	Channel 4: 74 - Squad to Squad<br/>
	Channel 5: 75 - Artillery<br/>
	Channel 6: 76 - Support<br/>
	Channel 7: 77 - Transport<br/>
	Channel 8: 78 - CAS<br/>
	Squad leaders CAS Trans Support Arty must be monitoring channel 4<br/><br/>
	<execute expression = QUOTE(QUOTE(call FUNC(openFieldManual)))>Insurgency Redux Field Manual</execute><br/><br/>
	Author: dixon13<br/>
	Version: VERSION<br/><br/>
	To report issues contact an admin of the server or report it to a member of the community.<br/><br/>
	License:<br/>
	Copyright 2015 Dixon Begay aka dixon13. All rights reserved.<br/>
	This work is licensed under the GNU General Public License Version 3<br/>
	To view a copy of this license got to: http://www.gnu.org/licenses/gpl.html or view the license in this mission located at: MISSION-ROOT\INS\LICENSE.txt<br/><br/>)]];
	
	if (((typeOf _unit) isKindOf "B_Helipilot_F") || ((typeOf _unit) isKindOf "rhsusf_army_ocp_helipilot") || ((typeOf _unit) isKindOf "rhsusf_army_ucp_helipilot")) then {
		"respawn_west" setMarkerPosLocal (getMarkerPos "respawn_Air");
	};
	LOG("CLIENT - Setting Channels");
	[player] spawn FUNC(setChannels);
} else {
	LOG("CLIENT - Player is not side WEST");
	LOG("CLIENT - Deleting markers");
	{
		if (([str(_x), "INS_service"] call CBA_fnc_find) >= 0) then { deleteMarkerLocal _x; TRACE_1("CLIENT - Deleteing marker",_x); };
		if (([str(_x), "INS_noBlufor"] call CBA_fnc_find) >= 0) then { deleteMarkerLocal _x; TRACE_1("CLIENT - Deleteing marker",_x); };
		if (([str(_x), "INS_MHQ"] call CBA_fnc_find) >= 0) then { deleteMarkerLocal _x; TRACE_1("CLIENT - Deleteing marker",_x); };
		false
	} count allMapMarkers;
	
	//Create diary for cache and lives
	//_unit createDiarySubject ["INS_DIARY","Insurgency Redux"];
	LOG("CLIENT - Creating briefing for client");
	_diaryCache = player createDiaryRecord ["Diary", ["InsurgencyRedux",
	QUOTE(<br/>INSURGENCY REDUX<br/>
	============================<br/><br/>
	To see how many caches are left <execute expression = QUOTE(QUOTE([player] call FUNC(cacheDiary))) >CLICK HERE</execute><br/><br/>
	To see how many blufor lives are left <execute expression = QUOTE(QUOTE([player] call FUNC(livesCheck))) >CLICK HERE</execute><br/><br/>
	To see what the server FPS is <execute expression = QUOTE(QUOTE([player] call FUNC(serverFPS))) >CLICK HERE</execute><br/><br/><br/>
	
	<execute expression = QUOTE(QUOTE(call FUNC(openFieldManual)))>Insurgency Redux Field Manual</execute><br/><br/>
	Author: dixon13<br/>
	Version: VERSION<br/><br/>
	To report issues contact an admin of the server or report it to a member of the community.<br/><br/>
	License:<br/>
	Copyright 2015 Dixon Begay aka dixon13. All rights reserved.<br/>
	This work is licensed under the GNU General Public License Version 3<br/>
	To view a copy of this license got to: http://www.gnu.org/licenses/gpl.html or view the license in this mission located at: MISSION-ROOT\INS\LICENSE.txt<br/><br/>)]];
	
	LOG("CLIENT - Creating actions for player");
	player setVariable ["INS_can_teleport",true];
	player addAction ["Hide Weapons",FUNC(hideWeapons),nil,1.5,true,true,"",QUOTE(([_target] call FUNC(checkWeap) && (vest _target == '' )))];
	player addAction ["Show Weapons",FUNC(showWeapons),nil,1.5,true,true,"","count (_target getVariable ['XON_INVENTORY',[]]) > 0"];
	player addAction ["Teleport",FUNC(opforTeleport),nil,1.5,true,true,"","!(visibleMap) && (alive _target) && (_target getVariable ['INS_can_teleport',true])"];
	
	LOG("CLIENT - Attaching a Respawn Event Handler for actions");
	player addEventHandler ["Respawn", {
		params ["_unit","_corpse"];
		
		_unit addAction ["Hide Weapon",FUNC(hideWeapons),nil,1.5,true,true,"",QUOTE(([_target] call FUNC(checkWeap) && (vest _target == '' )))];
		_unit addAction ["Show Weapon",FUNC(showWeapons),nil,1.5,true,true,"","count (_target getVariable ['XON_INVENTORY',[]]) > 0"];
		_unit addAction ["Teleport",FUNC(opforTeleport),nil,1.5,true,true,"","!(visibleMap) && (alive _target) && (_target getVariable ['INS_can_teleport',true])"];
	}];
	
	LOG("CLIENT - Setting Channels");
	[player] spawn FUNC(setChannels);
};

//The rest is still WIP -----------------------------------------------------------------------------------------------------------

//[INS_fnc_adminCheck,2,[player]] call CBA_fnc_addPerFrameHandler; // for future ACE integration of the admin tools
/*
[player] call INS_fnc_adminCheck;
if !(isMultiplayer) then {
    player addAction ["Teleport", {[player] call INS_fnc_adminTeleport;}];
    player setVariable ["GHOST",false];
    player addAction ["Ghost Mode On", {[player] call INS_fnc_adminGhost;}, nil, 1.5, true, true, "", "!(player getVariable 'GHOST')"];
    player addAction ["Ghost Mode Off", {[player] call INS_fnc_adminGhost;}, nil, 1.5, true, true, "", "(player getVariable 'GHOST')"];
};
*/