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
private ["_i","_sign","_sign2","_radius","_cache","_pos","_mkr","_range","_intelRadius"];

_cache = (missionNamespace getVariable "CACHE");
_intelRadius = 500; // Maybe make this a parameter in the description.ext?

_i = 0;
while { (getMarkerPos format["%1intel%2", _cache, _i] select 0) != 0 } do { _i = _i + 1; };
_sign = 1;
if (random 100 > 50) then { _sign = -1; };
_sign2 = 1;
if (random 100 > 50) then { _sign2 = -1; };
_radius = _intelRadius - _i * 50;
if (_radius < 50) then { _radius = 50; };
_range = round sqrt(_radius^2*2);
_range = _range - (_range % 50);
_text = format["%1m",_range];

_pos = [(getPosATL _cache select 0) + _sign *(random _radius),(getPosATL _cache select 1) + _sign2*(random _radius)];
_mkr = [format["%1intel%2", _cache, _i],_pos,"ICON",[0.5,0.5],"PERSIST","COLOR:","ColorRed","TEXT:",_text,"TYPE:","hd_unknown"] call CBA_fnc_createMarker;
GVAR(INS_marker_array) pushBack _mkr;
publicVariable QGVAR(INS_marker_array);
true;