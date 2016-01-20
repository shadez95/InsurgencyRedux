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

_this forceAddUniform "U_C_Poloshirt_tricolour";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "SmokeShell";
_this addItemToUniform "MiniGrenade";
_this addVest "V_TacVest_brn";
for "_i" from 1 to 8 do {_this addItemToVest "30Rnd_9x21_Mag";};
_this addItemToVest "HandGrenade";
_this addItemToVest "SmokeShell";
_this addBackpack "B_FieldPack_khk";
for "_i" from 1 to 3 do {_this addItemToBackpack "200Rnd_65x39_cased_Box_Tracer";};
_this addHeadgear "H_Cap_blk";
_this addGoggles "G_Bandanna_sport";

_this addWeapon "hgun_PDW2000_F";
_this addWeapon "Binocular";

_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

_this setFace "WhiteHead_07";
_this setSpeaker "Male03GRE";
true;