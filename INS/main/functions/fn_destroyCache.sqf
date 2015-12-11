/*
 * Author: dixon13
 * Destroy the cache in a grand fashion
 *
 * Arguments:
 * 0: Cache <OBJECT>
 *
 * Return value:
 * NONE
 *
 * Public: No
*/
params[["_cache",objNull]];

_cache spawn {
	private ["_cache","_numb","_count","_pos"];
	_cache = _this;
	_numb = ceil(random 3) + 3;
	_count = 0;
	_pos = getPos _cache;
	while {_count < _numb} do {
		"M_Mo_82mm_AT_LG" createVehicle _pos; sleep 1;
		_count = _count + 1;
	};
	deleteVehicle _cache;
};