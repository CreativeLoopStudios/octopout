/// CreateBrick(x, y, oBrick, Parent)
var X = argument0;
var Y = argument1;
var oBrick = argument2;
var Parent = argument3;

var Brick = instance_create(X, Y, oBrick);
Brick.Parent = Parent;
Brick.XOffset = Brick.x;
Brick.YOffset = Brick.y;
return Brick;
