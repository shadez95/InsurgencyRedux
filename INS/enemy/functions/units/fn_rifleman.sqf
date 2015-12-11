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

_this forceAddUniform "U_C_Poloshirt_burgundy";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "30Rnd_556x45_Stanag";
_this addVest "V_TacVest_oli";
_this addItemToVest "SmokeShell";
_this addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_this addItemToVest "6Rnd_GreenSignal_F";};
for "_i" from 1 to 2 do {_this addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {_this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";};
for "_i" from 1 to 4 do {_this addItemToVest "MiniGrenade";};
_this addHeadgear "H_Bandanna_surfer";
_this addGoggles "G_Bandanna_shades";

_this addWeapon "arifle_Mk20C_F";
_this addWeapon "hgun_Pistol_Signal_F";
_this addWeapon "Binocular";

_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemGPS";

_this setFace "AfricanHead_03";
_this setSpeaker "Male03GRE";
true;