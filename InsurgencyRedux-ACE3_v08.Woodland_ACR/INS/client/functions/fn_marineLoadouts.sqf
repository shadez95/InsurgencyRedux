params ["_unit","_loadout"];

removeAllWeapons _unit;
removeAllItems _unit;
//removeAllAssignedItems this;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

switch _loadout do {
	case "marine_squadleader": {
		//Marine - Squad leader ----------------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_wd";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		_unit addItemToUniform "B_IR_Grenade";
		_unit addVest "rhsusf_spc_squadleader";
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt";

		_unit addWeapon "rhs_weap_m16a4_grip";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
		_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
		_unit addWeapon "ACE_Vector";
	};
	case "marine_corpsman": {
		//Marine - Corpsman ----------------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_wd";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		_unit addVest "rhsusf_spc_corpsman";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addBackpack "rhsusf_assault_eagleaiii_coy";
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt";
	
		_unit addWeapon "rhs_weap_m16a4_carryhandle";
		_unit addWeapon "Binocular";
	};
	case "marine_grenadier": {
		//Marine - Grenadier (203) ----------------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_wd";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_teamleader";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		for "_i" from 1 to 6 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m713_Red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m714_White";};
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt";
	
		_unit addWeapon "rhs_weap_m16a4_carryhandle_M203";
		_unit addWeapon "Binocular";
	};
	case "marine_rifleman_at": {
		//Marine - Rifleman (AT) ----------------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_wd";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_rifleman";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt";
		
		_unit addWeapon "rhs_weap_m16a4_carryhandle";
		_unit addWeapon "rhs_weap_M136_hedp";
		_unit addWeapon "Binocular";
		_unit addSecondaryWeaponItem "rhs_m136_hedp_mag";
	};
	case "marine_rifleman": {
		//Marine - Rifleman ----------------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_wd";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_rifleman";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt";
		
		_unit addWeapon "rhs_weap_m16a4_carryhandle";
		_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
		_unit addWeapon "Binocular";
	};
	case "marine_rifleman_2": {
		//Marine - Rifleman 2 ----------------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_wd";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_rifleman";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt";
		
		_unit addWeapon "rhs_weap_m16a4_carryhandle";
		_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		_unit addWeapon "Binocular";
	};
	case "marine_mg": {
		//Marine - Machinegunner ----------------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_wd";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_corpsman";
		for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_762x51_m62_tracer";};
		_unit addBackpack "rhsusf_assault_eagleaiii_coy";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt";
		
		_unit addWeapon "rhs_weap_m240B_CAP";
		_unit addWeapon "Binocular";
	};
	case "marine_tl": {
		//Marine - Teamleader -------------------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_wd";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_squadleader";
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		_unit addBackpack "rhsusf_assault_eagleaiii_coy";
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt";
		
		_unit addWeapon "rhs_weap_m16a4";
		_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
		_unit addWeapon "ACE_Vector";
	};
};