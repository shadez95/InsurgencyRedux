#include "\x\cba\addons\main\script_macros_mission.hpp"

//#define VERSION 0.8
#define MAJOR 0
#define MINOR 8
#define PATCHLVL 3
#define BUILD 160110//DATE YY/MM/DD

#define VERSION MAJOR.MINOR.PATCHLVL.BUILD

#define COMPILE_FINAL(var1) compileFinal preprocessFileLineNumbers var1
#define COMPILE_FILE(var1) COMPILE_FILE2_SYS('var1')
#define COMPILE_IFILE(var1) COMPILE_FILE_SYS(PREFIX,COMPONENT,var1)


#define INITIATE call compile preprocessFileLineNumbers
#define INIT_MODULE(var1) INITIATE('PREFIX\var1\init.sqf')

#define PATHTO_FUNCS QUOTE(PREFIX\COMPONENT\functions)

#define QFUNC(var1) QUOTE(FUNC(var1))
#define QEFUNC(var1,var2) QUOTE(EFUNC(var1,var2))
#define PATHTO_SOUND(var1) QUOTE(PREFIX\sounds\var1)
