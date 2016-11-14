/// GenerateRandomLife(PositionStartX, PositionEndX, PositionStartY, PositionEndY, NumberToGenerate, oLife)
var PositionStartX = argument0;
var PositionEndX = argument1;
var PositionStartY = argument2;
var PositionEndY = argument3;
var NumberToGenerate = argument4;
var oLife = argument5;

for(var i = 0; i < NumberToGenerate; i += 1)
{
    var RandX = irandom_range(PositionStartX, PositionEndX);
    var RandY = irandom_range(PositionStartY, PositionEndY);
    var jellyfish = instance_create(RandX, RandY, oLife);
    with jellyfish
    {
        var Scale = RandY / 500;
        DebugLog(Scale, "Debug");
        oLife.image_xscale = Scale;
        oLife.image_yscale = Scale;
        oLife.image_alpha = Scale;
    }
}
