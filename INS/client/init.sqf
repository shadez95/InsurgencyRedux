#include "script_component.hpp"
LOG(MSG_INIT);
params ["_unit"];
TRACE_1("Player unit",_unit);
private "_fnc_INS_hint";
//Define local functions to register events with
_fnc_INS_hint = { [(_this select 0),(_this select 1)] call EFUNC(main,hint); };

waitUntil {!isNull _unit || !isNull player};

//Register events
["INS_HINT_EH", _fnc_INS_hint] call CBA_fnc_addEventHandler; //Hint event handler

//Check respawn module
//if (ARG_1(paramsArray,4) != 0) then { [_unit] call FUNC(addClientHandlers); }; // <-- Moved to onPlayerKilled.sqf

//Create diary for cache and lives
//_unit createDiarySubject ["INS_DIARY","Insurgency Redux"];
_diaryCache = player createDiaryRecord ["Diary", ["InsurgencyRedux",
QUOTE(<br/>INSURGENCY REDUX<br/>
============================<br/><br/>
To see how many caches are left <execute expression = QUOTE(QUOTE([_unit] call FUNC(cacheDiary))) >CLICK HERE</execute><br/><br/>
To see how many blufor lives are left <execute expression = QUOTE(QUOTE([_unit] call FUNC(livesCheck))) >CLICK HERE</execute><br/><br/>
To see what the server FPS is <execute expression = QUOTE(QUOTE([_unit] call FUNC(serverFPS))) >CLICK HERE</execute><br/><br/><br/>
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

if (!(profileNamespace getVariable ["INS_firstTime",false])) then {
	profileNamespace setVariable ["INS_firstTime",true];
	[] spawn {
		sleep 2;
		closeDialog 0;
		_return = [
			parseText "New to the server or new to the game mode? Click the 'Field Manual' button below to learn more.<br/> <t size='0.8'>**This message will not display again**</t>",
			"Welcome to Insurgency Redux",
			"Field Manual",
			"Continue"] call BIS_fnc_GUImessage;
		if (_return) then { (findDisplay 46) createDisplay "RscDisplayFieldManual"; };
	};
};

if (side _unit == WEST) then {
	{
		if (([str(_x), "INS_noOpfor"] call CBA_fnc_find) >= 0) then { deleteMarkerLocal _x; };
	} forEach allMapMarkers;
	
	if (((typeOf _unit) isKindOf "B_Helipilot_F") || ((typeOf _unit) isKindOf "rhsusf_army_ocp_helipilot") || ((typeOf _unit) isKindOf "rhsusf_army_ucp_helipilot")) then {
		"respawn_west" setMarkerPosLocal (getMarkerPos "respawn_Air");
	};
	
	[_unit] spawn {
		params ["_unit"];
		hintSilent "TFAR setting channels";
		sleep 5;
		hintSilent "TFAR setting channels";
		waitUntil {
			_radio = call TFAR_fnc_activeSwRadio;
			(!isNil "_radio")
		};
		[(call TFAR_fnc_activeSwRadio), 1, "71"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 2, "72"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 3, "73"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 4, "74"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 5, "75"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 6, "76"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 7, "77"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 8, "78"] call TFAR_fnc_SetChannelFrequency;
	
		_LrRadio = call TFAR_fnc_activeLrRadio;
		sleep 3;
		if (isNil "_LrRadio") exitWith { hintSilent "TFAR done setting channels"; LOG("Timed Out -- TFAR: No long range radio"); };
	
		[(call TFAR_fnc_activeLrRadio), 1, "71"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 2, "72"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 3, "73"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 4, "74"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 5, "75"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 6, "76"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 7, "77"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeLrRadio), 8, "78"] call TFAR_fnc_SetChannelFrequency;
		hintSilent "TFAR done setting channels";
		
		_unit addEventHandler ["Respawn", {
			params ["_unit","_corpse"];
			
			sleep 5;
			waitUntil {
				_radio = call TFAR_fnc_activeSwRadio;
				(!isNil "_radio")
			};
			[(call TFAR_fnc_activeSwRadio), 1, "71.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeSwRadio), 2, "72.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeSwRadio), 3, "73.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeSwRadio), 4, "74.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeSwRadio), 5, "75.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeSwRadio), 6, "76.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeSwRadio), 7, "77.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeSwRadio), 8, "78.0"] call TFAR_fnc_SetChannelFrequency;
			
			_LrRadio = call TFAR_fnc_activeLrRadio;
			sleep 2;
			if (isNil "_LrRadio") exitWith { LOG("Timed Out -- TFAR: No long range radio"); };
			
			[(call TFAR_fnc_activeLrRadio), 1, "71.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 2, "72.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 3, "73.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 4, "74.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 5, "75.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 6, "76.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 7, "77.0"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 8, "78.0"] call TFAR_fnc_SetChannelFrequency;
		}];
};
} else {
	{
		if (([str(_x), "INS_service"] call CBA_fnc_find) >= 0) then { deleteMarker _x; };
	} forEach allMapMarkers;
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
/*TAGS = addMissionEventHandler ["Draw3D", {
    {
        if (side _x == side player && {alive _x}) then {
            _dist = (player distance _x) / 15;
            _color = getArray (configFile/'CfgInGameUI'/'SideColors'/'colorFriendly');
            if (cursorTarget != _x) then {
                _color set [3, 1 - _dist]
            };
            drawIcon3D [
                '',
                _color,
                [
                    visiblePosition _x select 0,
                    visiblePosition _x select 1,
                    (visiblePosition _x select 2) +
                    ((_x modelToWorld (
                        _x selectionPosition 'head'
                    )) select 2) + 0.4 + _dist / 1.5
                ],
                0,
                0,
                0,
                name _x,
                2,
                0.03,
                'PuristaMedium'
            ];
        };
    } count allUnits - [player];
}];*/