params ["_unit"];
hintSilent "TFAR setting channels";
sleep 5;
hintSilent "TFAR setting channels";
waitUntil {
	_radio = call TFAR_fnc_activeSwRadio;
	(!isNil "_radio")
};
[(call TFAR_fnc_activeSwRadio), 1, "71"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 2, "72"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 3, "73"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 4, "74"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 5, "75"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 6, "76"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 7, "77"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 8, "78"] call TFAR_fnc_SetChannelFrequency;

_LrRadio = call TFAR_fnc_activeLrRadio;
sleep 3;
if (isNil "_LrRadio") exitWith { hintSilent "TFAR done setting channels"; LOG("Timed Out -- TFAR: No long range radio"); };

[(call TFAR_fnc_activeLrRadio), 1, "71"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 2, "72"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 3, "73"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 4, "74"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 5, "75"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 6, "76"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 7, "77"] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 8, "78"] call TFAR_fnc_SetChannelFrequency;
hintSilent "TFAR done setting channels";
	
_unit addEventHandler ["Respawn", {
	params ["_unit","_corpse"];
	
	sleep 5;
	waitUntil {
		_radio = call TFAR_fnc_activeSwRadio;
		(!isNil "_radio")
	};
	[(call TFAR_fnc_activeSwRadio), 1, "71"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 2, "72"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 3, "73"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 4, "74"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 5, "75"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 6, "76"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 7, "77"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 8, "78"] call TFAR_fnc_SetChannelFrequency;
	
	_LrRadio = call TFAR_fnc_activeLrRadio;
	sleep 2;
	if (isNil "_LrRadio") exitWith { LOG("Timed Out -- TFAR: No long range radio"); };
	
	[(call TFAR_fnc_activeLrRadio), 1, "71"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeLrRadio), 2, "72"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeLrRadio), 3, "73"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeLrRadio), 4, "74"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeLrRadio), 5, "75"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeLrRadio), 6, "76"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeLrRadio), 7, "77"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeLrRadio), 8, "78"] call TFAR_fnc_SetChannelFrequency;
}];