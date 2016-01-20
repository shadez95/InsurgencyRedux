/*
Variables %1 - %10 are hardcoded:
 %1 - small empty line
 %2 - bullet (for item in list)
 %3 - highlight start
 %4 - highlight end
 %5 - warning color formated for using in structured text tag
 %6 - BLUFOR color attribute
 %7 - OPFOR color attribute
 %8 - Independent color attribute
 %9 - Civilian color attribute
 %10 - Unknown side color attribute
 */
class INS_hint {
    displayName = "Insurgency Redux"; // display name for main class doesn't work. appears as <Mission> in Field Manual
    class INS_overview {
        arguments[] = {};
        displayName = "Mission Overview";
        description = "Insurgency Redux is a mission that has been written from the ground up based off the original Insurgency from Arma 2. The goal of the game is to gather intel, and hunt down and destroy caches. ";
        tip = "";
        image = "";
        noImage = false;
    };
	class INS_blufor {
		arguments[] = {};
		displayName = "Blufor Players";
		description = "As a Blufor player you must gather intel to destroy caches. %1To gain intel about the location of these caches, you must kill enemy troops and pick up intel that will drop from their bodies. The intel will look like a brief case when it drops. The intel has a probability of dropping so don't expect intel everytime you kill somebody. %3Although, when you kill an Opfor/Independent player, intel will always drop.%4 %1When you retrieve intel refer to the map to figure out where the cache is. Intel will spawn a marker telling you the approximate distance of the cache from the marker. The more intel you gather the easier it will be to locate the cache. %1%1%3Flag Pole%4 %1The flag pole at base is your best friend. It will allow you to teleport to your squad mates or to an MHQ, if one is setup.";
		tip = "";
		image = "";
		noImage = false;
	};
    class INS_opfor {
        arguments[] = {};
        displayName = "OPFOR/Independent Players";
        description = "As an opfor/independent player you must find the Blufor players and kill them before you run out of caches. %3You must protect the caches%4.";
        tip = "Find the cache and it will have some goodies in it to help you fight off the Blufor players better.";
        image = "";
        noImage = false;
    };
	class INS_ticketSystem {
        arguments[] = {};
        displayName = "Ticket System";
        description = "Blufor has a tickets system. If Blufor kills a civilian, they lose tickets (refer to the Civilian Casualties tab). If Blufor destroys a cache, they will gain tickets back. The number of tickets Blufor gains depends on the parameters (check the parameters in the MP lobby or ask an admin). If a Blufor player dies, 1 ticket will be deducted from Blufor.";
        tip = "";
        image = "";
        noImage = false;
    };
    class INS_addon {
        arguments[] = {};
        displayName = "Addon Integration";
        description = "This mission has been integrated to work with ACE3, ALiVE, Task Force Radio, and RHS. %1%1%3View Distance%4 %1To change your view distance you can use the built in ACE feature by going into your ACE options or game options. %1If you want to change your view distance and grass settings, use the ALiVE feature. To access the ALiVE setting, use your 'App Menu' key or bind a key to 'Custom Key 20' to access the ALiVE menu. Then click 'Player Options', View Settings'. A dialog will pop up and you can adjust your settings there.";
        tip = "";
        image = "";
        noImage = false;
    };
    class INS_headlessClient {
        arguments[] = {};
        displayName = "Headless Client";
        description = "Insurgency Redux works with headless clients. It supports up to 3 headless clients.";
        tip = "";
        image = "";
        noImage = false;
    };
    class INS_armory {
        arguments[] = {};
        displayName = "Arsenal";
        description = "Insurgency Redux uses Bohemia's Virtual Arsenal. Players can access Arsenal at the base(s) and MHQ(s) (refer to the Mobile HQ tab for more information).";
        tip = "";
        image = "";
        noImage = false;
    };
    class INS_civDeath {
        arguments[] = {};
        displayName = "Civilian Casualties";
        description = "If civilians are killed, Blufor will lose tickets. Opfor/independent players can use this to their advantage. Blufor should be sure to check their target before firing. The number of tickets Blufor loses depends on the parameters (check the parameters in the MP lobby or ask an admin).";
        tip = "";
        image = "";
        noImage = false;
    };
    class INS_mhq {
        arguments[] = {};
        displayName = "Mobile HQ";
        description = "Blufor players have the option to setup an MHQ anywhere on the map. There are 2 MHQ's available at mission start. MHQ's do not respawn so don't lose them. MHQ's can be vital, as they spawn an Arsenal crate, a teleport board to teleport to squad mates, and the option to teleport to the MHQ itself using the flag pole at base.";
        tip = "Opfor/Independent players can use the MHQ to their advatange by trying to access the MHQ's Arsenal crate to gain better weapons.";
        image = "";
        noImage = false;
    };
    class INS_comms {
        arguments[] = {};
        displayName = "Communications";
        description = "Blufor has their radio channels preset to frequencies. Each channel is for different uses. %1%2Channel 1: 71.0 - Army Squad %1%2Channel 2: 72.0 - Marine Squad %1%2Channel 3: 73.0 - MARSOC Squad %1%2Channel 4: 74.0 - Squad to Squad %1%2Channel 5: 75.0 - Artillery %1%2Channel 6: 76.0 - Support %1%2Channel 7: 77.0 - Transport %1%2Channel 8: 78.0 - CAS %1%1%3Squad leaders, CAS, Trans, Support, Arty must be monitoring channel 4%4";
        tip = "";
        image = "";
        noImage = false;
    };
	class INS_brief {
		arguments[] = {};
		displayName = "Briefing Information";
		description = "Check the briefing out in the map if you can't remember what channel you need to be on or to see how many caches are left. You can also see how many Blufor lives are left there and check the server FPS.";
		tip = "";
		image = "";
		noImage = false;
	};
	class INS_credits {
		arguments[] = {};
		displayName = "Credits and Thanks";
		description = "%3Author: dixon13%4 %1%2ACE3 Team for ACE3 %1%2CBA Team for CBA A3 %1%2ALiVE Team for ALiVE %1%2RHS Team for RHS mods %1%2TFAR Team for Task Force Radio %1%2kju and his team for All in Arma Terrain Pack";
		tip = "";
		image = "";
		noImage = false;
	};
};