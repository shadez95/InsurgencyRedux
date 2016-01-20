#include "script_component.hpp"
LOG(MSG_INIT);

if (isServer) then {
	LOG("Tickets init for server is initializing");
	[west, (missionNamespace getVariable ["INS_tickets",80])] call BIS_fnc_respawnTickets;
};

if !(local player) exitWith {};
player addEventHandler["Killed", {
	[player] call FUNC(playerKilled);
}];
_tickets = [west] call BIS_fnc_respawnTickets;
TRACE_2("Ticket module - Blufor lives counter - Killed event handler added to player",player,_tickets);
