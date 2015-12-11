/*
 * Author: dixon13
 * Find a random building position
 *
 * Arguments:
 * NONE
 *
 * Return value:
 * Position <ARRAY>
 *
 * Public: No
 */
//#define DEBUG_MODE_FULL
#include "script_component.hpp"

private["_arrayPositions","_pos","_building","_count"];

_building = GVARMAIN(buildingLocs) call BIS_fnc_selectRandom; //Pick random building

if (INS_DEBUG) then { [format[QUOTE(FUNC(findBuildingPos): _building = %1),_building]] call FUNC(dump); };
TRACE_1(QFUNC(findBuildingPos),_building);
_arrayPositions = _building call BIS_fnc_buildingPositions;
TRACE_1(QFUNC(findBuildingPos),_arrayPositions);
//_count = count _arrayPositions;
if ((count _arrayPositions) < 1) then {
	_pos = getPos _building;
	if (INS_DEBUG) then { [format[QUOTE(FUNC(findBuildingPos) _pos = %1),_pos]] call FUNC(dump); };
	TRACE_1(QFUNC(findBuildingPos),_pos);
	_pos;
} else {
	_pos = _arrayPositions call BIS_fnc_selectRandom;
	if (INS_DEBUG) then { [format[QUOTE(FUNC(findBuildingPos): _pos = %1),_pos]] call FUNC(dump); };
	TRACE_1(QFUNC(findBuildingPos),_pos);
	_pos;
};