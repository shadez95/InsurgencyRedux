/*
 * Author: dixon13
 * Hint function that handles hints and can pick what type of hint you want.
 *
 * Arguments:
 * 0: Type of hint <STRING>
 * 1: Text you wish to display <STRING>
 *
 * Return value:
 * NONE
 *
 * Public: No
*/
params["_type","_message"];

switch (toUpper _type) do {
	case "HINT" : { hint parseText format["%1",_message]; };
	case "HINTC" : { hintC format["%1",_message]; };
	case "HINTS";
	case "HINTSILENT" : { hintSilent parseText format["%1",_message]; };
	default { hint parseText format["%1",_message]; };
};