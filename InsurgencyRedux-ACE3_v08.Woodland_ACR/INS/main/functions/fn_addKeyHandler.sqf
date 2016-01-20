/*
 * Author: dixon13
 * Add key handler event
 *
 * Arguments:
 * 0: Display number<NUMBER>
 * 1: Event name (KeyDown,KeyUp,etc) <STRING>
 * 2: Code to execute <CODE or STRING>
 * 3: 
 *
 * Return value:
 * None
 *
 * Public: No
 */

param[0,];

debugMenu_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", {
		_keyDown = _this select 1;
		if (_keyDown == 
	}];