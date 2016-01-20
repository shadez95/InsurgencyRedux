#include "script_component.hpp"
params["_cache"];
_EHid = _cache addEventHandler ["handleDamage", { // Add event handler to the cache
	params ["_cache"];
	switch (ARG_1(_this,4)) do {
		case "SatchelCharge_Remote_Mag": { _cache setDamage 1; TRACE_1("========= INS_fnc_cacheHandleDamage ========= cache damage is 1",_cache); };
		case "DemoCharge_Remote_Mag": { _cache setDamage 1; TRACE_1("========= INS_fnc_cacheHandleDamage ========= cache damage is 1",_cache); };
		default { _cache setDamage 0; };
	};
}];
_EHid;