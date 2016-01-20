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
	case "marsoc_leader": {
		//Marsoc - Element leader --------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_m81";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_squadleader";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addHeadgear "rhsusf_mich_bare_alt_tan";

		_unit addWeapon "rhs_weap_m4a1_grip2";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
		_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
		_unit addWeapon "Binocular";
	};
	case "marsoc_corpsman": {
		//Marsoc - Corpsman --------------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_m81";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_corpsman";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addBackpack "rhsusf_assault_eagleaiii_coy";
		_unit addHeadgear "rhsusf_mich_bare_tan";

		_unit addWeapon "rhs_weap_m4a1_grip2";
		_unit addPrimaryWeaponItem "acc_flashlight";
		_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		_unit addWeapon "Binocular";
	};
	case "marsoc_rifleman": {
		//Marsoc - Element Rifleman ------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_m81";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_rifleman";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addHeadgear "rhsusf_mich_bare";
	
		_unit addWeapon "rhs_weap_m4a1_grip2";
		_unit addPrimaryWeaponItem "acc_flashlight";
		_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
		_unit addWeapon "Binocular";
	};
	case "marsoc_rifleman_2": {
		//Marsoc - Element Rifleman 2 -----------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_m81";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_rifleman";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addHeadgear "rhsusf_mich_bare_norotos";
		
		_unit addWeapon "rhs_weap_m4a1_grip2";
		_unit addPrimaryWeaponItem "acc_flashlight";
		_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		_unit addWeapon "Binocular";
	};
	case "marsoc_grenadier": {
		//Marsoc - Element Grenadier ---------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_m81";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_teamleader";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		for "_i" from 1 to 6 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m713_Red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m715_Green";};
		_unit addHeadgear "rhsusf_mich_bare_tan";
	
		_unit addWeapon "rhs_weap_m4a1_m320";
		_unit addPrimaryWeaponItem "acc_flashlight";
		_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		_unit addWeapon "Binocular";
	};
	case "marsoc_rifleman_at": {//Marsoc - Element Rifleman (AT) -------------------------------------
		_unit forceAddUniform "rhs_uniform_FROG01_m81";
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
		_unit addVest "rhsusf_spc_teamleader";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
		_unit addHeadgear "rhsusf_mich_bare_norotos_alt_tan";
	
		_unit addWeapon "rhs_weap_m4a1";
		_unit addPrimaryWeaponItem "acc_flashlight";
		_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
		_unit addWeapon "rhs_weap_M136_hedp";
		_unit addWeapon "Binocular";
		_unit addSecondaryWeaponItem "rhs_m136_hedp_mag";
	};
};