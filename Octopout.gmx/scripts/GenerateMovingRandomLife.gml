/// GenerateMovingRandomLife(PositionStartX, PositionEndX, PositionStartY, PositionEndY, NumberToGenerate, oLife)
var PositionStartX = argument0;
var PositionEndX = argument1;
var PositionStartY = argument2;
var PositionEndY = argument3;
var NumberToGenerate = argument4;
var oLife = argument5;

for(var i = 0; i < NumberToGenerate; i += 1)
{
    var RandX = random_range(PositionStartX, PositionEndX);
    var RandY = random_range(PositionStartY, PositionEndY);
    var Life = instance_create(RandX, RandY, oLife);
    with Life
    {
        var Scale = (RandY * 1.5) / room_height;
        var Alpha = RandY / room_height;
        image_xscale = Scale;
        image_yscale = Scale;
        image_alpha = Alpha;
        direction = random_range(0, 360);
        image_angle = direction;
        speed = random_range(0.2, 0.5);
    }
}


