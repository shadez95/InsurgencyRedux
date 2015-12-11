/*
 * Author: dixon13
 * Dumps messages to rpt and sideChat (depends if in debug mode)
 *
 * Arguments:
 * 0: Message you wish to display <STRING>
 *
 * Return value:
 * NONE
 *
 * Public: No
*/
params[["_string",nil]];

diag_log format["%1",_string];
player sideChat format["%1",_string];