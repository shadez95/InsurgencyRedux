params ["_crate"];
["AmmoboxInit",[_crate,false,{true}]] call BIS_fnc_arsenal;

//Primary Weapons to add
_primaryWeapons = ["hgun_PDW2000_F","srifle_GM6_F","srifle_dmr_06_camo_f","srifle_DMR_06_olive_F","srifle_EBR_F","arifle_SDAR_F","SMG_02_F","SMG_01_F",
"rhs_weap_sr25_ec","rhs_weap_sr25","rhs_weap_m14ebrri","rhs_weap_m16a4","rhs_weap_m16a4_carryhandle",
"rhs_weap_m16a4_carryhandle_grip","rhs_weap_m16a4_carryhandle_grip_pmag","rhs_weap_m16a4_carryhandle_M203",
"rhs_weap_m16a4_carryhandle_pmag","rhs_weap_m16a4_grip","rhs_weap_XM2010","rhs_weap_XM2010_wd","rhs_weap_XM2010_d",
"rhs_weap_XM2010_sa","rhs_weap_m240B","rhs_weap_m240B_CAP","rhs_weap_m240G","rhs_weap_m249_pip_L","rhs_weap_m249_pip_L_para",
"rhs_weap_m249_pip_L_vfg","rhs_weap_m249_pip_S","rhs_weap_m249_pip_S_para","rhs_weap_m249_pip_S_vfg","rhs_weap_m32",
"rhs_weap_m4","rhs_weap_m4_grip2","rhs_weap_m4_carryhandle","rhs_weap_m4_carryhandle_pmag","rhs_weap_m4_grip",
"rhs_weap_m4_m203","rhs_weap_m4_m203S","rhs_weap_m4_m320","rhs_weap_m4a1_carryhandle","rhs_weap_m4a1_carryhandle_grip2",
"rhs_weap_m4a1_carryhandle_pmag","rhs_weap_m4a1_carryhandle_grip","rhs_weap_m4a1_carryhandle_m203",
"rhs_weap_m4a1_carryhandle_m203S","rhs_weap_m4a1","rhs_weap_m4a1_grip2","rhs_weap_m4a1_grip","rhs_weap_m4a1_m203",
"rhs_weap_m4a1_m203s","rhs_weap_m4a1_m320","rhs_weap_M590_8RD","rhs_weap_M590_5RD","rhs_weap_m27iar",

"hgun_Pistol_heavy_02_F","hgun_ACPC2_F","hgun_Pistol_heavy_01_F","hgun_Rook40_F","hgun_P07_F","hgun_Pistol_Signal_F",
"rhsusf_weap_glock17g4","rhsusf_weap_m1911a1","rhs_weap_M320","rhs_weap_pya",
"rhs_weap_rsp30_green","rhs_weap_rsp30_red","rhs_weap_rsp30_white",

"rhs_weap_fgm148","rhs_weap_fim92","rhs_weap_M136","rhs_weap_M136_hedp","rhs_weap_M136_hp","launch_NLAW_F"];
[_crate,_primaryWeapons,true] call BIS_fnc_addVirtualWeaponCargo;


_items = [
"ItemMap","ItemCompass","tf_microdagr","ItemGPS","rhsusf_ANPVS_15","ACE_Vector",
"rhsusf_ANPVS_14","ACE_Yardage450","ACE_Altimeter","ACE_MX2A","ItemWatch","tf_anprc152","Leupold_Mk4",
"Laserdesignator","tf_rf7800str","I_UavTerminal","Binocular",

"MineDetector","ToolKit",
"ACE_Banana","ACE_HuntIR_monitor","ACE_UAVBattery","ACE_wirecutter","ACE_MapTools","ACE_fieldDressing",
"ACE_morphine","ACE_epinephrine","ACE_tourniquet","ACE_bloodIV","ACE_bloodIV_500","ACE_bloodIV_250","ACE_surgicalKit",
"ACE_bodyBag","ACE_salineIV_250","ACE_salineIV_500","ACE_salineIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_plasmaIV",
"ACE_atropine","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_personalAidKit","ACE_microDAGR","ACE_RangeTable_82mm",

"ACE_SpareBarrel","ACE_Sandbag_empty","ACE_SpottingScope","ACE_Tripod","ACE_key_master","ACE_key_lockpick","ACE_key_west",
"ACE_key_east","ACE_key_civ","ACE_key_indp","ACE_ATragMX","ACE_IR_Strobe_Item","ACE_CableTie","ACE_DAGR","ACE_Clacker",
"ACE_M26_Clacker","ACE_DefusalKit","ACE_DeadManSwitch","ACE_Cellphone","ACE_Flashlight_MX991","ACE_Flashlight_KSF1",
"ACE_Flashlight_XL50","ACE_EarPlugs","ACE_Kestrel4500","ACE_RangeCard",

"rhsusf_acc_nt4_black","rhsusf_acc_anpeq15side","optic_ACO_grn","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15","optic_Aco",
"rhsusf_acc_rotex5_grey","rhsusf_acc_anpeq15_light","optic_ACO_grn_smg","rhsusf_acc_rotex5_tan","rhsusf_acc_anpeq15A","optic_Aco_smg",
"rhsusf_acc_SF3P556","ACE_acc_pointer_green","rhsusf_acc_ACOG3_test","rhsusf_acc_SFMB556","acc_pointer_IR","optic_AMS",
"rhsusf_acc_SFMB556","acc_flashlight","optic_AMS_khk","optic_AMS_snd","rhsusf_acc_ACOG2_USMC","rhsusf_acc_ACOG3_USMC",
"rhsusf_acc_ACOG_USMC","optic_Arco","ACE_optic_Arco_2D","ACE_optic_Arco_PIP","optic_DMS","optic_KHS_blk","optic_KHS_hex",
"optic_KHS_old","optic_KHS_tan","optic_LRPS","ACE_optic_LRPS_2D","ACE_optic_LRPS_PIP","rhsusf_acc_ELCAN","rhsusf_acc_ELCAN_pip",
"rhsusf_acc_ELCAN_ard","rhsusf_acc_ACOG","rhsusf_acc_ACOG_pip","rhsusf_acc_ACOG2","rhsusf_acc_ACOG3","rhsusf_acc_M2A1",
"rhsusf_acc_eotech_552","rhsusf_acc_compm4","optic_Holosight","optic_Holosight_smg","optic_SOS","ACE_optic_SOS_2D",
"ACE_optic_SOS_PIP","optic_MRCO","ACE_optic_MRCO_2D","optic_Hamr","ACE_optic_Hamr_2D","ACE_optic_Hamr_PIP","rhsusf_acc_ACOG_d",
"rhsusf_acc_ACOG_sa","rhsusf_acc_ACOG_wd","rhsusf_acc_EOTECH","rhsusf_acc_LEUPOLDMK4","rhsusf_acc_LEUPOLDMK4_2","rhsusf_acc_M2010S",
"bipod_01_F_blk","bipod_01_F_mtp","bipod_03_F_oli","bipod_01_F_snd","bipod_02_F_tan","rhsusf_acc_harris_bipod",
"muzzle_snds_B","rhsusf_acc_SR25S","muzzle_snds_L","muzzle_snds_acp","optic_Yorris","ACE_muzzle_mzls_smg_01","muzzle_snds_acp",
"optic_MRD","ACE_muzzle_mzls_smg_02",

"rhs_googles_clear","rhs_googles_black","rhs_googles_orange","rhs_googles_yellow","rhs_scarf","G_Bandanna_beast","G_Bandanna_blk",
"G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_tan"
];
[_crate,_items,true] call BIS_fnc_addVirtualItemCargo;


[_crate,["%ALL"],true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,["%ALL"],true] call BIS_fnc_addVirtualMagazineCargo;