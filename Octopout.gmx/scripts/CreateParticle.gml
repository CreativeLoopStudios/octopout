/// CreateParticle(x, y, number, particle)
PositionX = argument0;
PositionY = argument1;
NumberOfBubbles = argument2;
oParticle = argument3;

for(var i = 0; i < NumberOfBubbles; i += 1)
{
    instance_create(PositionX, PositionY, oParticle);
}
