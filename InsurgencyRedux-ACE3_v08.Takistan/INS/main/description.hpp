#include "script_component.hpp"

//--- Mission Title
author = "dixon13 aka D.Begay 71st SOG";
onLoadName = QUOTE(Insurgency Redux VERSION);
onLoadMission = QUOTE(Welcome to Insurgency Redux VERSION | Find and destroy the hidden weapons caches. Use your map to find possible cache locations.);
//onLoadIntroTime = true;
onLoadMissionTime = 1;
loadScreen = "71STSOGLOADING2.jpg";
overviewTextLocked = "Insurgency Redux | dixon13 has brought new life into Insurgency.";
overviewPicture = "71STSOGLOADING2.jpg";

//--- System Header
class header {
	gametype = COOP;
	minplayers = 1;
	maxplayers = 38;
};

//--- General Settings
aiKills = 0;
briefing = 0;
debriefing = 0;
disableChannels[] = {0,6};   //Disables channels: 0 Global, 1 Side, 2 Command and 6 System Chat

//--- Debug
enableDebugConsole = 1;
allowFunctionsLog = 0;
//allowFunctionsRecompile = 1;

//--- Respawn
respawn = 3; //"BASE"
respawnDelay = 30;
respawnDialog = 1;
respawnButton = 1;
disabledAI = 1;
respawnTemplates[] = {"Counter"};
respawnOnStart = 0;

// -- Respawn -- West
respawnTemplatesWest[] = {"Tickets","Counter"};

// -- Clean Up
corpseManagerMode = 1;
corpseLimit = 30;
corpseRemovalMinTime = 300;
corpseRemovalMaxTime = 300;

wreckManagerMode = 1;
wreckLimit = 10;
wreckRemovalMinTime = 300;
wreckRemovalMaxTime = 300;

/*class MissionSQM {
	#include "mission.sqm"
};*/

class CfgSounds {
	sounds[] = {news, prayer, warning, cantDo};

	class news {
		name = "news";
		sound[] = {PATHTO_SOUND(news.ogg), db+0, 1.0};
		titles[] = {};
	};

	class prayer {
		name = "prayer";
		sound[] = {PATHTO_SOUND(prayer.ogg), db+1, 1};
		titles[] = {};
	};

	class warning {
		name = "warning";
		sound[] = {PATHTO_SOUND(warning.ogg), db+1, 1};
		titles[] = {};
	};
};

//Event handlers
//The below code doesn't work related to: https://github.com/CBATeam/CBA_A3/issues/42
/*class Extended_Killed_EventHandlers {
    class CAManBase {
        class INS_CAManBase_Init {
            killed = QUOTE(_this call EFUNC(main,handleKilled););
        };
    };
};*/
class Extended_Init_EventHandlers {
    class CAManBase {
		init = QUOTE(_this call FUNC(handleKilled););
    };
};

class CfgFunctions {
	#include "functions.hpp"// main component
	#include "..\client\functions.hpp"
	//#include "..\enemy\functions.hpp" <-- WIP
	#include "..\civilian\functions.hpp"
	#include "..\mhq\functions.hpp"
	#include "..\tickets\functions.hpp"
	#include "..\restrictions\functions.hpp"
	#include "..\suicide\functions.hpp"
};

class Params {
	#include "script_params.hpp"// main component
	#include "..\tickets\script_params.hpp" //Ends with paramsArray[4]
	#include "..\civilian\script_params.hpp"//Ends with paramsArray[5]
	#include "..\mhq\script_params.hpp" //Ends with paramsArray[9]
	#include "..\restrictions\script_params.hpp"
};

class CfgHints {
	#include "field_manual.hpp" // Field Manual
};

class CfgRemoteExec {
//https://community.bistudio.com/wiki/CfgRemoteExec
    class Functions {
        mode = 2;
        jip = 1;
		class INS_main_fnc_hint { allowTargets = 1; };
		class CBA_fnc_localEvent { allowTargets = 1; };
    };
    class Commands {};
};
