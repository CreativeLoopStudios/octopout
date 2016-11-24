/// KeepInsideRoom(width, height, speed)
var Width = argument0;
var Height = argument1;
var Spd = argument2;

var HalfWidth = 0;
var HalfHeight = 0;

if (Width > 0) HalfWidth = Width / 2;
if (Height > 0) HalfHeight = Height / 2;

var XLeft = x - HalfWidth;
var XRight = x + HalfWidth;

x = clamp(x, HalfWidth + global.BorderMargin, room_width - HalfWidth - global.BorderMargin);
y = clamp(y, HalfHeight, room_height - HalfHeight);
