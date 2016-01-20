params["_unit","_killer"];
if ((isPlayer _unit) && (side _unit == west)) then {
	["INS_HINT_EH",["HINTSILENT",format["Blufor lives left: %1",([west,-1] call BIS_fnc_respawnTickets)]]] call CBA_fnc_globalEvent;
};