/*
 * Author: dixon13
 * Creates a new intel marker
 *
 * Arguments:
 * NONE
 *
 * Return value:
 * True if successfully executed <BOOL>
 *
 * Public: Yes
 */
//#define DEBUG_MODE_FULL
#include "script_component.hpp"
private ["_dist","_text"];
private _cache = missionNamespace getVariable ["CACHE",objNull];
private _intelRadius = 700;
private _i = 0;

while { (getMarkerPos format["%1intel%2", _cache, _i] select 0) != 0 } do { _i = _i + 1; };

if (_i isEqualTo 0) then {
	_dist = _intelRadius;
	_text = format["%1m",_dist];
} else {
	_dist = _intelRadius - (50 * _i);
	_text = format["%1m",_dist];
	
	if (_dist <= 0) then {
		_dist = 50;
		_text = format["%1m",_dist];
	};
};

_pos = [_cache,_dist,(random 360)] call BIS_fnc_relPos;
_mkr = [format["%1intel%2", _cache, _i],_pos,"ICON",[0.5,0.5],"PERSIST","COLOR:","ColorRed","TEXT:",_text,"TYPE:","hd_unknown"] call CBA_fnc_createMarker;
GVAR(INS_marker_array) pushBack _mkr;
publicVariable QGVAR(INS_marker_array);
true