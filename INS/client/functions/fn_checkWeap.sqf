#include "script_component.hpp"
params ["_unit"];

_whiteList = ["SDAR_base_F","SMG_01_Base","SMG_02_base_F","pdw2000_base_F","rhs_weap_akms","rhs_weap_ak74m_folded"];//RHS Compatible (added RHS AK's with foldable stock)

_return = for "_i" from 0 to (count _whiteList - 1) do {
	_bool = (currentWeapon _unit isKindOf [(_whiteList select _i), configFile >> "CfgWeapons"]);
	if (_bool) exitWith { _bool; };
};
_return