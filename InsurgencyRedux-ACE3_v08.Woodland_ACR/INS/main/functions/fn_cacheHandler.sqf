/*
 * Author: dixon13
 * Cache handler
 *
 * Arguments:
 * 0: Operation, can be "NEW", "END" <STRING>
 *
 * Return value:
 * NONE
 *
 * Public: No
 */
#include "script_component.hpp"
params[["_inputString",""]];

if (_inputString == "") exitWith { ERROR_WITH_TITLE("INS_main_fnc_cacheHandler","Input is empty string... Exiting..."); };

switch (_inputString) do {
	case "NEW": {
		TRACE_1("=========== INS_main_fnc_cacheHandler - New cache is being created ============",_inputString);
		_pos = call FUNC(findBuildingPos);
		private ["_returnVar","_cache","_mkr"];
		
		TRACE_1(QUOTE(========== FUNC(cacheHandler) ==========),_pos);
		
		_cache = [_pos] call FUNC(createCache);
		if (INS_DEBUG) then {
			waitUntil { !(isNull _cache) };
			_mkr = ["CREATE",_cache] call FUNC(debugCacheMarker);
			_mkr;
		} else { _mkr = ""; };

		TRACE_3("INS_main_fnc_cacheHandler - Cache object | INS_DEBUG | debug marker",_cache,INS_DEBUG,_mkr);
		missionNamespace setVariable ["CACHE",_cache,true];

		[_cache] call FUNC(cacheHandleDamage);
		[_cache] call FUNC(addCacheWeapons);
		_cache allowDamage true;
		[_cache,_mkr] call FUNC(cacheHandleKilled);
	};
	case "END": {
		[] spawn {
			//WIP - [parseText "AAN live in the Kunduz Valley...", parseText "Multiple weapons caches were destroyed today in the Kunduz Valley... | KFC is now officially called Kentucky Fried Chicken again and the Colonel is back... | Insurgency Redux by dixon13 of the 71st Special Operations Group"] spawn BIS_fnc_AAN;
			sleep 10;
			["end1"] call BIS_fnc_endMissionServer;
		};
	};
};