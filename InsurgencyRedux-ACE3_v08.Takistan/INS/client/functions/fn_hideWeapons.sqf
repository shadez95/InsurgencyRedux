#include "script_component.hpp"
params ["_unit"];

private _weapons = weapons _unit;
if ((count _weapons) isEqualTo 3) exitWith { hintSilent parseText "Cannot hide launcher</br>Remove the launcher from your inventory"; };

_myWeapons = [];
_myMagazines= [];
_weaponItems = weaponsItems _unit;

for "_i" from 0 to (count _weaponItems - 1) do {
	_weapon = (_weaponItems select _i) select 0;
	_myWeapons pushBack _weapon;
	_magazine = ((_weaponItems select _i) select 4) select 0;
	_myMagazines pushBack _magazine;
};

private _primeItems = primaryWeaponItems _unit;
private _handItems = handgunItems _unit;
TRACE_2("Primary and Secondary Items",_primeItems,_handItems);
if (count _primeItems isEqualTo 0 && count _handItems isEqualTo 0) then { LOG("No weapon items"); _unit setVariable ["XON_INVENTORY",[_myWeapons,_myMagazines]]; };
if (count _primeItems > 0 || count _handItems > 0) then { LOG("Weapon Items are being stored"); _items = [_primeItems,_handItems]; _unit setVariable ["XON_INVENTORY",[_myWeapons,_myMagazines,_items]]; };

{ _unit removeWeapon _x; LOG("Weapons being removed"); } forEach _weapons;

_unit setCaptive true;
true