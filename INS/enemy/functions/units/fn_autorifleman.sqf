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

_this forceAddUniform "U_C_Poloshirt_stripped";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "SmokeShell";
_this addItemToUniform "MiniGrenade";
_this addVest "V_TacVest_oli";
for "_i" from 1 to 2 do {_this addItemToVest "200Rnd_65x39_cased_Box_Tracer";};
_this addBackpack "B_FieldPack_khk";
for "_i" from 1 to 3 do {_this addItemToBackpack "200Rnd_65x39_cased_Box_Tracer";};
_this addHeadgear "H_Cap_blk";
_this addGoggles "G_Bandanna_sport";

_this addWeapon "LMG_Mk200_F";
_this addPrimaryWeaponItem "bipod_02_F_blk";
_this addWeapon "Binocular";

_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

_this setFace "WhiteHead_07";
_this setSpeaker "Male03GRE";
true;