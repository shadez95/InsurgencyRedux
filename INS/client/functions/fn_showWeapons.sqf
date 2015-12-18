#include "script_component.hpp"
params ["_unit"];
	
_weapons = (_unit getVariable ["XON_INVENTORY",[]]) select 0;
_magazines = (_unit getVariable ["XON_INVENTORY",[]]) select 1;
_items = if (count (_unit getVariable ["XON_INVENTORY",[]]) > 2) then {
	_return = (_unit getVariable ["XON_INVENTORY",[]]) select 2;
	TRACE_1("There are weapon items",_return);
	_return
};
_items params [["_primeItems",[]],["_handItems",[]]];
TRACE_2("Primary and Handgun items",_primeItems,_handItems);

{ _unit addWeapon _x; } forEach _weapons;
{ _unit addMagazine _x } forEach _magazines;

if (count _primeItems > 0) then { { _unit addPrimaryWeaponItem _x; TRACE_1("Adding Primary Item",_x); } forEach _primeItems; };
if (count _handItems > 0) then { { _unit addHandgunItem _x; TRACE_1("Adding Handgun Item",_x); } forEach _handItems; };

_unit setVariable ["XON_INVENTORY",[]];
_unit setCaptive false;
true