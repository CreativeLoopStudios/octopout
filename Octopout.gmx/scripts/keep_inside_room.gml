var width = argument0;
var height = argument1;
var spd = argument2;

var half_width = 0;
var half_height = 0;

if (width > 0) half_width = width / 2;
if (height > 0) half_height = height / 2;

x = clamp(x, half_width, room_width - half_width);
y = clamp(y, half_height, room_height - half_height);
