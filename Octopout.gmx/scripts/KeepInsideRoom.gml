/// KeepInsideRoom(width, speed)
var Width = argument0;
var Spd = argument1;

var HalfWidth = 0;

if (Width > 0) HalfWidth = Width / 2;

x = clamp(x, HalfWidth + global.BorderMargin, view_wport[0] - (HalfWidth + global.BorderMargin));

