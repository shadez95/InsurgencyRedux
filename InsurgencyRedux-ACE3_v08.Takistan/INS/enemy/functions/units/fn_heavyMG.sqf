/*
 * Author: dixon13
 * Changes the gear on a unit
 *
 * Arguments:
 * Unit <OBJECT>
 *
 * Return value:
 * True if successfully executed <BOOL>
 *
 * Public: No
 */

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this forceAddUniform "U_BG_Guerilla2_2";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {_this addItemToUniform "MiniGrenade";};
_this addItemToUniform "SmokeShellRed";
_this addVest "V_HarnessO_gry";
_this addItemToVest "FirstAidKit";
_this addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {_this addItemToVest "150Rnd_93x64_Mag";};
_this addBackpack "B_FieldPack_cbr";
for "_i" from 1 to 2 do {_this addItemToBackpack "150Rnd_93x64_Mag";};
_this addHeadgear "H_Cap_tan";
_this addGoggles "G_Balaclava_blk";

_this addWeapon "MMG_01_tan_F";
_this addPrimaryWeaponItem "bipod_02_F_blk";
_this addWeapon "Rangefinder";

_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

_this setFace "WhiteHead_07";
_this setSpeaker "Male06GRE";
true;