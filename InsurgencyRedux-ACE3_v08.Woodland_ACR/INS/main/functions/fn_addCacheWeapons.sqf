#include "script_component.hpp"
#define addWeapCargo(var1,var2) addWeaponCargoGlobal [var1,var2]
#define addMagCargo(var1,var2) addMagazineCargoGlobal [var1,var2]
#define addBackCargo(var1,var2) addBackpackCargoGlobal [var1,var2]
#define weapCount 5
#define launchersCount 2
#define magCount 10
#define rocketCount 5

params ["_cache"];

clearWeaponCargoGlobal _cache;
clearBackpackCargoGlobal _cache;
clearMagazineCargoGlobal _cache;
clearItemCargoGlobal _cache;

//SVD PSO
_cache addWeapCargo("rhs_weap_svd_pso1",1);
_cache addMagCargo("rhs_10Rnd_762x54mmR_7N1",magCount);
//RPG-18
_cache addWeapCargo("rhs_weap_rpg26",launchersCount);
//RSHG-2
_cache addWeapCargo("rhs_weap_rshg2",launchersCount);
//RPG-7 PGO
_cache addWeapCargo("rhs_weap_rpg7_pgo",launchersCount);
_cache addMagCargo("rhs_rpg7_PG7VL_mag",rocketCount);
_cache addMagCargo("rhs_rpg7_TBG7V_mag",1);
_cache addMagCargo("rhs_rpg7_OG7V_mag",2);
//Igla
_cache addWeapCargo("rhs_weap_igla",2);
_cache addMagCargo("rhs_mag_9k38_rocket",rocketCount);
//Backpacks
_cache addBackCargo("B_FieldPack_cbr",2);
_cache addBackCargo("B_FieldPack_khk",2);
_cache addBackCargo("B_TacticalPack_oli",2);
_cache addBackCargo("B_Carryall_khk",2);
_cache addBackCargo("B_Carryall_cbr",2);