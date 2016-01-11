#include "script_component.hpp"
params["_unit"];
["INS_HINT_EH",["HINTSILENT",format["Caches left: %1",((missionNamespace getVariable ["INS_CacheLimit",0]) - GVARMAIN(cacheCount))]]] call CBA_fnc_localEvent;
