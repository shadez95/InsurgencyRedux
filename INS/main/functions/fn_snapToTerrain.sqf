params ["_obj"];

_pos = getPosATL _obj;
_obj setVectorUp surfaceNormal position _obj;
_pos params ["_x","_y","_z"];
_obj setPosATL [_x,_y,0];