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

_this forceAddUniform "U_BG_Guerilla3_1";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {_this addItemToUniform "MiniGrenade";};
_this addItemToUniform "SmokeShellRed";
_this addVest "V_Chestrig_khk";
_this addItemToVest "FirstAidKit";
_this addItemToVest "HandGrenade";
for "_i" from 1 to 8 do {_this addItemToVest "20Rnd_762x51_Mag";};
_this addHeadgear "H_Booniehat_khk";

_this addWeapon "srifle_DMR_06_olive_F";
_this addPrimaryWeaponItem "optic_DMS";
_this addPrimaryWeaponItem "bipod_02_F_blk";
_this addWeapon "Rangefinder";

_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

_this setFace "WhiteHead_07";
_this setSpeaker "Male05GRE";
true;