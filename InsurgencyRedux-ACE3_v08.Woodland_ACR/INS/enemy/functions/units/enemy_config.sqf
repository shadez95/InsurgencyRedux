
//Rifleman---------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_C_Poloshirt_burgundy";
this addItemToUniform "FirstAidKit";
this addItemToUniform "30Rnd_556x45_Stanag";
this addVest "V_TacVest_oli";
this addItemToVest "SmokeShell";
this addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {this addItemToVest "6Rnd_GreenSignal_F";};
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";};
for "_i" from 1 to 4 do {this addItemToVest "MiniGrenade";};
this addHeadgear "H_Bandanna_surfer";
this addGoggles "G_Bandanna_shades";

this addWeapon "arifle_Mk20C_F";
this addWeapon "hgun_Pistol_Signal_F";
this addWeapon "Binocular";

this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";

this setFace "AfricanHead_03";
this setSpeaker "Male03GRE";

//Autorifleman---------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_C_Poloshirt_stripped";
this addItemToUniform "FirstAidKit";
this addItemToUniform "SmokeShell";
this addItemToUniform "MiniGrenade";
this addVest "V_TacVest_oli";
for "_i" from 1 to 2 do {this addItemToVest "200Rnd_65x39_cased_Box_Tracer";};
this addBackpack "B_FieldPack_khk";
for "_i" from 1 to 3 do {this addItemToBackpack "200Rnd_65x39_cased_Box_Tracer";};
this addHeadgear "H_Cap_blk";
this addGoggles "G_Bandanna_sport";

this addWeapon "LMG_Mk200_F";
this addPrimaryWeaponItem "bipod_02_F_blk";
this addWeapon "Binocular";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

this setFace "WhiteHead_07";
this setSpeaker "Male03GRE";

// Asst. Autorifleman---------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_C_Poloshirt_tricolour";
this addItemToUniform "FirstAidKit";
this addItemToUniform "SmokeShell";
this addItemToUniform "MiniGrenade";
this addVest "V_TacVest_brn";
for "_i" from 1 to 8 do {this addItemToVest "30Rnd_9x21_Mag";};
this addItemToVest "HandGrenade";
this addItemToVest "SmokeShell";
this addBackpack "B_FieldPack_khk";
for "_i" from 1 to 3 do {this addItemToBackpack "200Rnd_65x39_cased_Box_Tracer";};
this addHeadgear "H_Cap_blk";
this addGoggles "G_Bandanna_sport";

this addWeapon "hgun_PDW2000_F";
this addWeapon "Binocular";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

this setFace "WhiteHead_07";
this setSpeaker "Male03GRE";

//Medic---------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_I_G_resistanceLeader_F";
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {this addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToUniform "MiniGrenade";};
this addItemToUniform "SmokeShellRed";
this addItemToUniform "SmokeShellGreen";
this addVest "V_HarnessO_gry";
this addItemToVest "HandGrenade";
this addItemToVest "SmokeShell";
for "_i" from 1 to 10 do {this addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";};
this addBackpack "B_FieldPack_cbr";
for "_i" from 1 to 10 do {this addItemToBackpack "FirstAidKit";};
this addItemToBackpack "Medikit";
this addHeadgear "H_Cap_tan";
this addGoggles "G_Balaclava_blk";

this addWeapon "arifle_Mk20C_plain_F";
this addWeapon "Binocular";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

this setFace "WhiteHead_07";
this setSpeaker "Male01GRE";

//Rifleman (AT)---------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_BG_Guerilla1_1";
this addItemToUniform "FirstAidKit";
this addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {this addItemToUniform "MiniGrenade";};
this addItemToUniform "SmokeShellRed";
this addVest "V_Chestrig_rgr";
for "_i" from 1 to 2 do {this addItemToVest "FirstAidKit";};
this addItemToVest "HandGrenade";
this addItemToVest "SmokeShell";
for "_i" from 1 to 5 do {this addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";};
this addBackpack "B_FieldPack_cbr";
this addItemToBackpack "NLAW_F";
this addHeadgear "H_Cap_oli";
this addGoggles "G_Shades_Black";

this addWeapon "arifle_Mk20C_plain_F";
this addWeapon "launch_NLAW_F";
this addWeapon "Binocular";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

this setFace "WhiteHead_07";
this setSpeaker "Male01GRE";

//Heavy Machine Gunner---------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_BG_Guerilla2_2";
this addItemToUniform "FirstAidKit";
this addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {this addItemToUniform "MiniGrenade";};
this addItemToUniform "SmokeShellRed";
this addVest "V_HarnessO_gry";
this addItemToVest "FirstAidKit";
this addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {this addItemToVest "150Rnd_93x64_Mag";};
this addBackpack "B_FieldPack_cbr";
for "_i" from 1 to 2 do {this addItemToBackpack "150Rnd_93x64_Mag";};
this addHeadgear "H_Cap_tan";
this addGoggles "G_Balaclava_blk";

this addWeapon "MMG_01_tan_F";
this addPrimaryWeaponItem "bipod_02_F_blk";
this addWeapon "Rangefinder";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

this setFace "WhiteHead_07";
this setSpeaker "Male06GRE";

//Marksman---------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_BG_Guerilla3_1";
this addItemToUniform "FirstAidKit";
this addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {this addItemToUniform "MiniGrenade";};
this addItemToUniform "SmokeShellRed";
this addVest "V_Chestrig_khk";
this addItemToVest "FirstAidKit";
this addItemToVest "HandGrenade";
for "_i" from 1 to 8 do {this addItemToVest "20Rnd_762x51_Mag";};
this addHeadgear "H_Booniehat_khk";

this addWeapon "srifle_DMR_06_olive_F";
this addPrimaryWeaponItem "optic_DMS";
this addPrimaryWeaponItem "bipod_02_F_blk";
this addWeapon "Rangefinder";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

this setFace "WhiteHead_07";
this setSpeaker "Male05GRE";

//Rifleman 2--------------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_BG_Guerilla2_3";
this addItemToUniform "FirstAidKit";
this addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {this addItemToUniform "MiniGrenade";};
this addItemToUniform "SmokeShellRed";
this addVest "V_TacVest_khk";
this addItemToVest "FirstAidKit";
this addItemToVest "HandGrenade";
for "_i" from 1 to 6 do {this addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";};
this addHeadgear "H_Cap_blk";
this addGoggles "G_Balaclava_oli";

this addWeapon "arifle_Mk20_F";
this addWeapon "Binocular";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

this setFace "WhiteHead_07";
this setSpeaker "Male02GRE";

//Grenadier--------------------
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_BG_Guerrilla_6_1";
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {this addItemToUniform "MiniGrenade";};
this addItemToUniform "SmokeShell";
this addItemToUniform "SmokeShellGreen";
this addVest "V_HarnessOGL_brn";
this addItemToVest "FirstAidKit";
this addItemToVest "HandGrenade";
for "_i" from 1 to 5 do {this addItemToVest "30Rnd_556x45_Stanag";};
this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";
for "_i" from 1 to 10 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
this addHeadgear "H_Cap_blk";
this addGoggles "G_Balaclava_oli";

this addWeapon "arifle_Mk20_GL_plain_F";
this addWeapon "Binocular";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

this setFace "WhiteHead_07";
this setSpeaker "Male02GRE";
