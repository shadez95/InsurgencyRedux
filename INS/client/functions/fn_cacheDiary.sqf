//#define DEUBG_MODE_FULL
#include "script_component.hpp"
params["_unit"];
["INS_HINT_EH",["HINTSILENT",format["Caches left: %1",(ARG_1(paramsArray,2) - GVARMAIN(cacheCount))]]] call CBA_fnc_localEvent;