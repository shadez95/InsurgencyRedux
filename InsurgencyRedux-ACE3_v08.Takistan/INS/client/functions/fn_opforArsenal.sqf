params ["_crate"];
["AmmoboxInit",[_crate,false,{true}]] call BIS_fnc_arsenal;

//Primary Weapons to add
_primaryWeapons = ["rhs_weap_akm","rhs_weap_akm_gp25","rhs_weap_akms","rhs_weap_akms_gp25","rhs_weap_pkm",
//Secondary weapons
"rhs_weap_igla","rhs_weap_rpg7"];
[_crate,_primaryWeapons,true] call BIS_fnc_addVirtualWeaponCargo;


_items = [
"ItemMap","ItemCompass","ItemWatch","Binocular","ToolKit","tf_pnr1000a","tf_microdagr",
"ACE_Banana","ACE_fieldDressing",
"ACE_morphine","ACE_epinephrine","ACE_tourniquet","ACE_bloodIV","ACE_bloodIV_500","ACE_bloodIV_250","ACE_surgicalKit",
"ACE_bodyBag","ACE_salineIV_250","ACE_salineIV_500","ACE_salineIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_plasmaIV",
"ACE_atropine","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_personalAidKit",

"ACE_SpareBarrel","ACE_Sandbag_empty","ACE_key_lockpick",
"ACE_key_east","ACE_key_civ","ACE_key_indp","ACE_DeadManSwitch","ACE_Cellphone","ACE_Flashlight_MX991","ACE_Flashlight_KSF1",
"ACE_Flashlight_XL50","ACE_EarPlugs","ACE_RangeCard",

"rhs_scarf","G_Bandanna_beast","G_Bandanna_blk",
"G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_tan","H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk","H_Bandanna_sgg",
"H_Bandanna_sand","H_Bandanna_camo","rhs_beanie_green","rhs_beanie","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan",
"H_Cap_grn_BI","H_Cap_blk","H_Cap_blu","H_Cap_blk_CMMG","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","H_Cap_red","H_Cap_tan","H_Hat_brown",
"H_Hat_blue","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk","H_StrawHat",
"H_StrawHat_dark",

//Uniforms
"U_I_G_resistanceLeader_F","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour",
"U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_BG_Guerilla3_1","U_BG_leader",
"rhs_chdkz_uniform_5","rhs_chdkz_uniform_4","rhs_chdkz_uniform_3","rhs_chdkz_uniform_2","rhs_chdkz_uniform_1","U_C_HunterBody_grn","U_OrestesBody","U_C_Poor_1",

//Vests
"V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessO_brn","V_HarnessO_gry",
"V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_TacVest_blk","V_TacVest_brn",
"V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_I_G_resistanceLeader_F","rhs_vydra_3m",

//Explosives
"IEDUrbanBig_Remote_Mag","IEDUrbanSmall_Remote_Mag","IEDLandSmall_Remote_Mag","IEDLandBig_Remote_Mag",

"rhs_mag_rgn","rhs_mag_rgd5"
];
[_crate,_items,true] call BIS_fnc_addVirtualItemCargo;


[_crate,[
	"B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk","B_AssaultPack_sgg","B_FieldPack_blk","B_FieldPack_cbr",
	"B_FieldPack_khk","B_FieldPack_oli","B_FieldPack_oucamo",
	"RHS_NSV_Gun_Bag","RHS_NSV_Tripod_Bag","rhs_rpg_empty","rhs_sidor",
	"B_TacticalPack_blk","B_TacticalPack_rgr","B_TacticalPack_ocamo","B_TacticalPack_oli"
],true] call BIS_fnc_addVirtualBackpackCargo;

[_crate,["%ALL"],true] call BIS_fnc_addVirtualMagazineCargo;

