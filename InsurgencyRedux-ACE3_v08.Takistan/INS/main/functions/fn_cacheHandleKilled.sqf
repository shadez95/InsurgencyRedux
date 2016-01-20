#include "script_component.hpp"

params["_cache",["_mkr",""]];
_EHid = _cache addEventHandler ["Killed", {
	params ["_cache"];
	TRACE_1(format["======== %1 ======== cache was killed",FUNC(cacheHandleKilled)], _cache);
	if (isServer) then {
		GVARMAIN(cacheCount) = GVARMAIN(cacheCount) + 1;
		publicVariable QGVARMAIN(cacheCount);
		[_cache] spawn FUNC(destroyCache); //Spawn so that destroying the cache runs on a separate thread because it handles the explosions after the cache is destroyed
		
		TRACE_2(format["%1 - cacheMarker, cacheCount",FUNC(cacheHandleKilled)], GVAR(cacheMarker),GVARMAIN(cacheCount));
		if (INS_DEBUG) then { ["DELETE",_cache,_mkr] call FUNC(debugCacheMarker); };
		
		_title = "<t size='1.2' color='#e5b348' shadow='1' shadowColor='#000000'>Cache Destroyed</t><img color='#ffffff' image='img_line_ca.paa' align='center' size='0.6' />";		
		["INS_HINT_EH",["HINTSILENT",format["%1<br/>Caches destroyed: %2/%3",_title,GVARMAIN(cacheCount),(missionNamespace getVariable ["INS_CacheLimit",4])]]] call CBA_fnc_globalEvent;
		
		if (count GVAR(INS_marker_array) > 0) then { {deleteMarker _x} forEach GVAR(INS_marker_array); GVAR(INS_marker_array) = []; publicVariable QGVAR(INS_marker_array); };
		TRACE_1(QUOTE(FUNC(cacheHandleKilled) - cacheCount),GVARMAIN(cacheCount););
		if (GVARMAIN(cacheCount) >= (missionNamespace getVariable ["INS_CacheLimit",4])) then { ["END"] call FUNC(cacheHandler); } else { ["NEW"] call FUNC(cacheHandler); };
	};
}];
_EHid;