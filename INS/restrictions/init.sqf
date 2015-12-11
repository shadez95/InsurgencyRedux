#include "script_component.hpp"
LOG(MSG_INIT);
if ((missionNamespace getVariable ["INS_Restrictions",1]) == 0) exitWith { LOG("Restrictions - Vehicle restrictions turned off exiting"); };
if !(local player) exitWith { LOG("Restrictions - You are not a local client or you are dedicated server"); };

if (local player) then {
	LOG("Restrictions module is executing on local client");
	switch (missionNamespace getVariable ["INS_Restrictions",1]) do {
		case 1: {
			private ["_vehicle"];
			private _typeUnit = typeOf player;
			private _airUnits = ["B_Helipilot_F","B_helicrew_F","B_Pilot_F","rhsusf_army_ucp_helipilot","rhsusf_army_ucp_helicrew","rhsusf_airforce_jetpilot","rhsusf_airforce_pilot",
						"rhsusf_army_ocp_helicrew","rhsusf_army_ocp_helipilot","rhsusf_usmc_marpat_wd_helipilot","rhsusf_usmc_marpat_wd_helicrew","rhsusf_usmc_marpat_d_helicrew","rhsusf_usmc_marpat_d_helipilot"];
			private _crewUnits = ["B_crew_F","rhsusf_army_ucp_combatcrewman","rhsusf_army_ucp_crewman","rhsusf_army_ocp_crewman","rhsusf_army_ocp_combatcrewman","rhsusf_usmc_marpat_wd_crewman",
						"rhsusf_usmc_marpat_wd_combatcrewman","rhsusf_usmc_marpat_d_crewman","susf_usmc_marpat_d_combatcrewman"];
			switch (true) do {
				case (_typeUnit in _airUnits): {
					[{
						(_this select 0) params ["_unit"];
						_vehicle = objectParent _unit;
						if ((isNull _vehicle) OR !(driver _vehicle == _unit)) exitWith {};
						
						if ((_vehicle isKindOf "Tank") && (driver _vehicle == _unit)) then {
							hintSilent "You are not a crewman";
							_unit action ["GetOut", _vehicle];
						};
					}, 0.5, [player]] call CBA_fnc_addPerFrameHandler;
				};
				case (_typeUnit in _crewUnits): {
					[{
						(_this select 0) params ["_unit"];
						_vehicle = objectParent _unit;
						if ((isNull _vehicle) OR !(driver _vehicle == _unit)) exitWith {};
						
						if ((_vehicle isKindOf "Air") && (driver _vehicle == _unit) OR ([_unit,_vehicle] call FUNC(isCoPilot))) then {
							hintSilent "You are not a pilot";
							_unit action ["GetOut", vehicle _unit];
						};
					}, 0.5, [player]] call CBA_fnc_addPerFrameHandler;
				};
				default {
					[{
						(_this select 0) params ["_unit"];
						_vehicle = objectParent _unit;
						if ((isNull _vehicle) && !(driver _vehicle == _unit)) exitWith {};
						
						if ((_vehicle isKindOf "Air") OR ([_unit,_vehicle] call FUNC(isCoPilot))) then {
							hintSilent "You are not a crewman nor a pilot";
							_unit action ["GetOut", vehicle _unit];
						};
						if ((_vehicle isKindOf "Tank") && (driver _vehicle == _unit)) then {
							hintSilent "You are not a crewman. You cannot man the driver or the gunner position.";
							_unit action ["GetOut", vehicle _unit];
						};
					}, 0.5, [player]] call CBA_fnc_addPerFrameHandler;
				};
			};
		};
		case 2: {
			_memberIDs = call compileFinal preprocessFileLineNumbers "\userconfig\71stsog\memberIDs.sqf";// Configure this line to your own memberIDs file. Read next line below for more info
			_uidString = getPlayerUID player; //This command returns a player's Steam ID in a *string*
			if !(_uidString in _memberIDs) then {
				[{
					(_this select 0) params ["_unit"];
					_vehicle = objectParent _unit;
					if ((isNull _vehicle) OR !(driver _vehicle == _unit)) exitWith {};
					
					if ((_vehicle isKindOf "Air") OR (_vehicle isKindOf "Tank") && (driver _vehicle == _unit) OR ([_unit,_vehicle] call FUNC(isCoPilot))) then {
						hintSilent "You are not a member";
						_unit action ["GetOut", vehicle _unit];
					};
				}, 0.5, [player]] call CBA_fnc_addPerFrameHandler;
			};
		};
		case 3:{
			private _typeUnit = typeOf player;
			private _airUnits = ["B_Helipilot_F","B_helicrew_F","B_Pilot_F"];
			private _crewUnits = ["B_crew_F","B_engineer_F","B_soldier_repair_F"];
			
			private _memberIDs = call compileFinal preprocessFileLineNumbers "\userconfig\71stsog\memberIDs.sqf";// Configure this line to your own memberIDs file. Read next line below for more info
			private _uidString = getPlayerUID player; //This command returns a player's Steam ID in a *string*
			
			switch (true) do {
				case ((_typeUnit in _airUnits) && !(_uidString in _memberIDs)): {
					[{
						(_this select 0) params ["_unit"];
						_vehicle = objectParent _unit;
						if ((isNull _vehicle) OR !(driver _vehicle == _unit)) exitWith {};
						
						if ((_vehicle isKindOf "Tank") && (driver _vehicle == _unit) OR ([_unit,_vehicle] call FUNC(isCoPilot))) then {
							hintSilent "You are not a crewman nor are you a member";
							_unit action ["GetOut", _vehicle];
						};
					}, 0.5, [player]] call CBA_fnc_addPerFrameHandler;
				};
				case ((_typeUnit in _crewUnits) && !(_uidString in _memberIDs)): {
					[{
						(_this select 0) params ["_unit"];
						_vehicle = objectParent _unit;
						if ((isNull _vehicle) OR !(driver _vehicle == _unit)) exitWith {};
						
						if ((_vehicle isKindOf "Air") && (driver _vehicle == _unit) OR ([_unit,_vehicle] call FUNC(isCoPilot))) then {
							hintSilent "You are not a pilot nor are you a member";
							_unit action ["GetOut", vehicle _unit];
						};
					}, 0.5, [player]] call CBA_fnc_addPerFrameHandler;
				};
				default {
					[{
						(_this select 0) params ["_unit"];
						_vehicle = objectParent _unit;
						if ((isNull _vehicle) OR !(driver _vehicle == _unit)) exitWith {};
						
						if ((_vehicle isKindOf "Air") OR !(_uidString in _memberIDs) && (driver _vehicle == _unit) OR ([_unit,_vehicle] call FUNC(isCoPilot))) then {
							hintSilent "You are not a crewman, pilot, nor a member";
							_unit action ["GetOut", vehicle _unit];
						};
						if ((_vehicle isKindOf "Tank") && (driver _vehicle == _unit)) then {
							hintSilent "You are not a crewman. You cannot man the driver or the gunner position.";
							_unit action ["GetOut", vehicle _unit];
						};
					}, 0.5, [player]] call CBA_fnc_addPerFrameHandler;
				};
			};
		};
	};
};