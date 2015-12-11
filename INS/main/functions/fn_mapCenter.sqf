/*
 * Author: dixon13
 * Gets the center of the map
 *
 * Arguments:
 * NONE
 *
 * Return value:
 * Center of map, position <ARRAY>
 *
 * Public: No
 */

_half = getNumber (configfile >> "CfgWorlds" >> worldName >> "mapSize") / 2;
_centerPos = [_half, _half, 0];
_centerPos;