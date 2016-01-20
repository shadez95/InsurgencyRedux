params["_unit"];
_unit addEventHandler["Killed", {
	if ((paramsArray select 5) == 0) exitWith {};
	params["_unit","_killer"];
	if (_unit != _killer && {side group _unit == civilian} && (isPlayer _killer)) then {
		["INS_CIVKILLED_EH",[_unit,_killer]] call CBA_fnc_globalEvent;
		_title = "<t size='1.2' color='#e5b348' shadow='1' shadowColor='#000000'>Civilian Death Penalty</t><img color='#ffffff' image='img_line_ca.paa' align='center' size='0.7' />";
		["INS_HINT_EH",["HINTSILENT",format["%1<br/>Blufor lives left: %2",_title,([west,-(paramsArray select 5)] call BIS_fnc_respawnTickets)]]] call CBA_fnc_globalEvent;
		if (([west] call BIS_fnc_respawnTickets) < 1) then {
			[-2, {
				hintSilent "Blufor lost all lives. Insurgents Win!";
				if (isServer) then {
					[] spawn {
						sleep 10;
						["end1"] call BIS_fnc_endMission;
					};
				};
			}] call CBA_fnc_globalExecute;
		};
	};
}];