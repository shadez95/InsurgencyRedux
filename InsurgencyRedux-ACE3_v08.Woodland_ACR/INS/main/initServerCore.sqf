#include "script_component.hpp";

//Define variables to be used
private["_mapCenter","_objects","_cacheMkr"];
GVARMAIN(buildingLocs) = []; //Define array that objects will be stored in. These are objects and not positions.
GVARMAIN(cacheCount) = 0;
publicVariable QGVARMAIN(cacheCount);
GVAR(INS_marker_array) = [];
publicVariable QGVAR(INS_marker_array);


_mapCenter = call FUNC(mapCenter); //<-- Center of map should output number value
if (INS_DEBUG) then { [format["intServerCore: _mapCenter = %1",_mapCenter]] call FUNC(dump); };
TRACE_1("initServerCore",_mapCenter);
_objects = nearestObjects [_mapCenter,["HouseBase"],10000];
//Kunuz Buildings ["Jbad_House","Jbad_House_c","Jbad_House_old","jbad_misc_market"];
//-- In Kunduz walls are under the class House_F and HouseBase cannot use these on this map.
//Stratis and Altis ["HouseBase"];
//-- Can use on Altis and Stratis and probably every other map except kunduz.

LOG("initServerCore.sqf, Caching possible cache building locations");
{
	if (!((_x buildingExit 0) isEqualTo [0,0,0]) && (typeOf _x != "Land_Pier_F")) then {
		if !(_x getVariable ["INS_building",false]) then {
			PUSH(GVARMAIN(buildingLocs),_x);
		};
	}; 
} forEach _objects;
if (INS_DEBUG) then {
	{
		GVAR(buildingLocsMarkers) = [format["%1",round(random 1000)],_x,"ICON",[1,1],"PERSIST","TYPE:","hd_dot","COLOR:","ColorGreen"] call CBA_fnc_createMarker;
	} forEach GVARMAIN(buildingLocs);
};

//Setup the first cache
LOG("Setting up first cache... initServerCore.sqf");
["NEW"] call FUNC(cacheHandler);