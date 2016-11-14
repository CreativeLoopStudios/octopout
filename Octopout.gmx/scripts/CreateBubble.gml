/// CreateBubble(x, y, number)
PositionX = argument0;
PositionY = argument1;
NumberOfBubbles = argument2;

for(var i = 0; i < NumberOfBubbles; i += 1)
{
    instance_create(PositionX, PositionY, oBubble);
}
