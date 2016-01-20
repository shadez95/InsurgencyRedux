
params[["_object",objNull]];
[-1, {
	_this addAction ["<t color='#FF0000'>Pickup Intel</t>",{
		call INS_main_fnc_createIntelMarker;
		deleteVehicle (_this select 0);
		if ((hasInterface) && !(isDedicated) && (local player) && (side player == WEST)) then {
			_title = "<t size='1.2' color='#e5b348' shadow='1' shadowColor='#000000'>Insurgency Redux</t><img color='#ffffff' image='img_line_ca.paa' align='center' size='0.55' />";
			["INS_HINT_EH",["HINTSILENT",format["%1<br/>Intel has been found",_title]]] call CBA_fnc_globalEvent;
		};
	}];
}, _object] call CBA_fnc_globalExecute;