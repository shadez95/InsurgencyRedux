//--- Disable Saving
enableSaving [false, false];

//Below is code for MHQ workaround when using ALiVE - ALiVE renames vehicles
if (isNil "INS_mhq_vehicleList") then {
	INS_mhq_vehicleList = [];
	{
		if (([str(_x), "INS_MHQ"] call CBA_fnc_find) >= 0) then {
			INS_mhq_vehicleList pushBack _x; _x setVariable ["vehicleName",(vehicleVarName _x)];
		};
	} forEach vehicles;
};

//------Required for Headless Client
if (!hasInterface && !isDedicated) then {
	if (isNil "headlessClients") then { headlessClients = []; };
	headlessClients pushBack player;
	publicVariable "headlessClients";
	isHC = true;
};

call compileFinal preprocessFileLineNumbers "INS\main\init.sqf";