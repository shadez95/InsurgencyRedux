#include "script_component.hpp"
private ["_dir","_pos","_posX","_posY","_posZ","_newPosX","_newPosY","_newPos","_trg","_side","_objectsArray","_respawnObj"];
params[["_HQ",objNull]];

_HQ setVariable ["removeAction",true,true];

_side = WEST; //TODO: add functionality so that this does not have to be manually inputed
[-1, {
	params[["_HQ",objNull],"_side"];

	[_side,"HQ"] sideChat format["%1 is being deployed...",_HQ getVariable ["vehicleName","MHQ"]];
},[_HQ,_side]] call CBA_fnc_globalExecute;


_dir = getDir _HQ;
_pos = getPos _HQ;
_crew = crew _HQ;
{
	_x action ["Eject", _HQ];
} forEach _crew;

["INS_ENGINEOFF_EH",[(driver _HQ)]] call CBA_fnc_globalEvent;
["INS_LOCKVEHICLE_EH",[_HQ,true]] call CBA_fnc_globalEvent;

_deployTime = (missionNamespace getVariable ["INS_MHQ_Time",30]) / 2;
sleep _deployTime;
[-1, {
	params[["_HQ",objNull],"_side"];

	[_side,"HQ"] sideChat format["%1 is being deployed...",_HQ getVariable ["vehicleName","MHQ"]];
},[_HQ,_side]] call CBA_fnc_globalExecute;
sleep _deployTime;

private ["_fnc_tpSquad","_fnc_arsenal"];
_fnc_tpSquad = {
	if (MHQ_tpSquad) then {
		["INS_mhq_addAction",[_this,"<t color='#c70000'>Teleport to Squad</t>", { call compile preprocessFileLineNumbers "INS\squad_teleport\teleport_squadmember.sqf"; }, 6, ""]] remoteExecCall ["CBA_fnc_localEvent",0,true];
	};
};
_fnc_arsenal = {
	if (MHQ_arsenal) then {
		//["INS_mhq_addAction",[_this,"<t color='#ff1111'>Arsenal</t>",{ [(_this select 0)] call EFUNC(client,arsenal); },5,""]] call CBA_fnc_globalEvent;
		[_this] call EFUNC(client,arsenal);
	};
};

switch true do {
	case (_HQ isKindOf "Truck_01_base_F"): {
		_objectsArray = [_pos,_dir,

		/*
		Grab data:
		Anchor position: [4054.42, 4189.7]
		Area size: 50
		Using orientation of objects: yes
		*/

		[
			//["B_Truck_01_box_F",[0,0,-0.121714],0.0870557,0.997723,0,[-0.0526619,-0.00283313],"HQ","",true,false],
			["Land_HBarrier_1_F",[3.89746,-0.959473,0],0.0869793,1,0,[0,0],"",{},true,false],
			["Land_MapBoard_F",[-3.60449,1.98828,-0.00219965],62.9516,1,0,[-0.319533,-0.0011056],"",_fnc_tpSquad,true,false],
			["Land_HBarrier_1_F",[3.85474,-2.43408,0],0.0869793,1,0,[0,0],"",{},true,false],
			["B_supplyCrate_F",[-3.17114,-4.0542,0],272.355,1,0.0300659,[-2.31947e-006,7.00218e-006],"",_fnc_arsenal,true,false],
			["Land_HBarrier_Big_F",[3.61963,4.02881,0],88.9223,1,0,[0,0],"",{},true,false],
			["Land_Bench_F",[-5.80835,0.785156,4.76837e-007],151.083,1,0,[3.14733e-005,0.000189276],"",{},true,false],
			[GVAR(GMG1),[1.54077,-7.12207,-0.0868087],140.742,1,0,[0.000192866,5.12201e-005],"",{},true,false],
			["Land_WoodenTable_large_F",[-6.87036,-2.82275,-3.8147e-006],0.0898025,1,0,[6.13963e-005,0.000628819],"",{},true,false],
			["Land_BagFence_Long_F",[4.03394,-6.30029,-0.000999928],89.1492,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Long_F",[0.306641,-9.00781,-0.000999928],2.26341,1,0,[0,0],"",{},true,false],
			["Land_HBarrier_Big_F",[0.150391,8.96436,0],0.0869793,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Round_F",[3.23999,-8.97852,-0.00130081],326.835,1,0,[0,0],"",{},true,false],
			["Land_HBarrierBig_F",[-7.53735,-9.58105,0],0.0869793,1,0,[0,0],"",{},true,false],
			["Land_HBarrier_Big_F",[-11.1907,8.47852,0],0.0869793,1,0,[0,0],"",{},true,false],
			["CamoNet_BLUFOR_open_Curator_F",[-6.30151,-0.888672,0],269.644,1,0,[0,0],"",{},false,false],
			["Land_HBarrier_3_F",[-15.1013,-3.53613,0],270.726,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Long_F",[-15.561,0.718262,-0.000999928],89.1492,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Long_F",[-15.283,-5.58154,-0.000999928],89.1492,1,0.00951938,[0,0],"",{},true,false],
			["Land_HBarrier_3_F",[-14.4124,-9.8418,0],0.0869793,1,0,[0,0],"",{},true,false],
			["Land_BagBunker_Small_F",[-16.4558,5.48926,0],91.377,1,0.100285,[0,-0],"",{},true,false],
			[GVAR(HMG1),[-16.1738,5.62207,-0.0871172],282.474,1,0,[0.00010446,0.000305954],"",{},true,false]
		],
		0.0] call FUNC(objectsMapper);
	};
	case (_HQ isKindOf "Offroad_01_base_F"): {
		_objectsArray = [_pos,_dir,

		/*
		Grab data:
		Anchor position: [4045.91, 4140.14]
		Area size: 20
		Using orientation of objects: yes
		*/

		[
			//["B_G_Offroad_01_armed_F",[0,0,-0.0300088],0.0378635,1,0,[-0.481188,-0.122063],"","",true,false],
			["Box_NATO_Ammo_F",[-2.44482,-1.37891,-9.53674e-007],360,1,0.0395639,[0.000169732,2.37784e-005],"",_fnc_arsenal,true,false],
			["Land_MapBoard_F",[-2.6377,2.19873,-0.00219822],43.5742,1,0,[-0.324497,0.0018306],"",_fnc_tpSquad,true,false],
			["Land_BagFence_Long_F",[3.15552,-2.32568,-0.000999928],91.1036,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Long_F",[-2.45459,4.34521,-0.000999928],359.807,1,0,[0,-0],"",{},true,false],
			["Land_Razorwire_F",[2.02075,5.06055,-2.38419e-006],43.8791,1,0,[0,0],"",{},true,false],
			["Land_HBarrier_1_F",[2.86035,-4.82813,0],226.56,1,0,[0,0],"",{},true,false],
			["Land_HBarrier_1_F",[-3.92285,-4.94385,0],273.652,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Long_F",[-5.802,-2.58105,-0.000999928],269.927,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Round_F",[-5.32471,3.98633,-0.00130081],136.042,1,0,[0,-0],"",{},true,false],
			["Land_BagFence_Corner_F",[-5.8125,-4.80273,-0.000999928],179.079,1,0,[0,-0],"",{},true,false]
		],
		0.0] call FUNC(objectsMapper);
	};
	case (_HQ isKindOf "MRAP_01_base_F" OR _HQ isKindOf "MRAP_02_base_F" OR _HQ isKindOf "MRAP_03_base_F"): {
		_objectsArray = [_pos,_dir,

		/*
		Grab data:
		Anchor position: [4123.59, 4178.68]
		Area size: 15
		Using orientation of objects: yes
		*/

		[
			//["O_MRAP_02_F",[0,0,0.00885439],359.999,1,0,[0.0228876,-0.00286987],"","",true,false],
			["Land_MapBoard_F",[-2.55566,1.06885,-0.00219822],58.421,1,0,[-0.32448,0.00183539],"",_fnc_tpSquad,true,false],
			["Land_HBarrier_5_F",[4.14551,-0.132324,0],91.4254,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Round_F",[2.69287,4.91846,-0.00130081],219.67,1,0,[0,0],"",{},true,false],
			["Land_Bench_F",[-5.36816,-0.371094,1.43051e-006],333.314,1,0,[0.000138176,0.00153741],"",{},true,false],
			["Land_WoodenTable_large_F",[-3.57715,-4.34668,-2.86102e-006],0.00236977,1,0,[-1.68331e-005,-0.000484925],"",{},true,false],
			["CamoNet_BLUFOR_Curator_F",[-5.96338,-1.8999,0],269.158,1,0,[0,0],"",{},false,false],
			["Land_BagFence_Long_F",[-4.27783,5.31348,-0.000999928],0,1,0,[0,0],"",{},true,false],
			["Land_Bench_F",[-6.92188,-1.06982,-2.38419e-006],333.312,1,0,[0.000183285,0.000613938],"",{},true,false],
			["Land_BagFence_Round_F",[-7.14258,5.18945,-0.00130081],145.993,1,0,[0,-0],"",{},true,false],
			["Land_BagFence_Round_F",[2.61377,-9.19238,-0.00130081],320.828,1,0,[0,-0],"",{},true,false],
			["Land_BagFence_Long_F",[-0.289063,-9.48145,-0.000999928],0,1,0,[0,0],"",{},true,false],
			["Box_NATO_Ammo_F",[-7.03564,-6.49707,0],299.18,1,0.0839222,[8.35708e-005,-0.00030323],"",_fnc_arsenal,true,false],
			["Land_BagFence_Long_F",[-9.22217,2.75684,-0.000999928],314.318,1,0,[0,-0],"",{},true,false],
			["Land_HBarrier_5_F",[-11.2798,1.03467,0],91.4254,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Long_F",[-6.125,-9.62061,-0.000999928],0,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Round_F",[-8.9165,-9.05078,-0.00130081],50.1499,1,0,[0,0],"",{},true,false],
			["Land_BagFence_Long_F",[-10.9868,-6.70508,0],242.375,1,0,[0,0],"",{},true,false]
		],
		0.0] call FUNC(objectsMapper);
	};
	case default {
		if (true) exitWith { [format["%1 - %2 : Vehicle is not compatible with the MHQ module... inform the author about the issue or use a different vehicle", THIS_FILE, FUNC(deployMHQ) ]] call EFUNC(main,dump); };
	};
};

_HQ setVariable ["packed",true,true];
_HQ setVariable ["deployed",true,true];
_HQ setVariable ["removeAction",false,true];
_HQ setVariable [QGVAR(objects),_objectsArray,true];

{
	if (typeOf _x == "Land_MapBoard_F") exitWith { _respawnObj = _x; };
	false
} count _objectsArray;

//_respawnPoint = [west,_respawnObj] call BIS_fnc_addRespawnPosition;
//_HQ setVariable ["respawnPoint",_respawnPoint,true];
_text = _HQ getVariable [QGVAR(markerText),"MHQ"];
[QGVAR(add_tpPoint),[_respawnObj,format["Teleport to %1",_text]]] remoteExecCall ["CBA_fnc_localEvent",west,true];
_HQ setVariable ["respawnPoint",_respawnObj,true];

[-1, {
	params[["_HQ",objNull],"_side"];

	[_side,"HQ"] sideChat format["%1 has deployed...",_HQ getVariable ["vehicleName","MHQ"]];
},[_HQ,_side]] call CBA_fnc_globalExecute;
