params ["_crate"];
 _crate addAction ["Spawn Empty Crate",{
	_box = "Box_NATO_Wps_F" createVehicle [0,0,10];
	clearItemCargoGlobal _box;
	clearWeaponCargoGlobal _box;
	clearMagazineCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	[(_this select 1),_box] call ace_dragging_fnc_startCarry;
}];
