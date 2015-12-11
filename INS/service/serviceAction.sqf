// execVM "INS\service\serviceAction.sqf";
private ["_driver","_action","_fnc_statement"];
params ["_object"];

systemChat format["_object = %1",_object];

_driver = driver _object;
_fnc_statement = {
	//_driver setVariable ["INS_RELOAD",true];
	(_this select 1) removeAction (_this select 2);
	[_object] execVM "INS\service\service.sqf";
};
_action = ["RELOAD_ACE_MENU","Repair and Rearm","",_fnc_statement,{!visibleMap && !(_driver getVariable ["INS_RELOAD",false])}] call ace_interact_menu_fnc_createAction;
[_driver, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
systemChat format["_action = %1",_action];



_driver addAction ["Repair and Rearm",{(_this select 1) removeAction (_this select 2); _handle = [] call compile preprocessFileLineNumbers "INS\service\service.sqf";}];