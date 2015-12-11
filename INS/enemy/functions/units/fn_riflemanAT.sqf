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

_this forceAddUniform "U_BG_Guerilla1_1";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {_this addItemToUniform "MiniGrenade";};
_this addItemToUniform "SmokeShellRed";
_this addVest "V_Chestrig_rgr";
for "_i" from 1 to 2 do {_this addItemToVest "FirstAidKit";};
_this addItemToVest "HandGrenade";
_this addItemToVest "SmokeShell";
for "_i" from 1 to 5 do {_this addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {_this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";};
_this addBackpack "B_FieldPack_cbr";
_this addItemToBackpack "NLAW_F";
_this addHeadgear "H_Cap_oli";
_this addGoggles "G_Shades_Black";

_this addWeapon "arifle_Mk20C_plain_F";
_this addWeapon "launch_NLAW_F";
_this addWeapon "Binocular";

_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

_this setFace "WhiteHead_07";
_this setSpeaker "Male01GRE";
true;