/// EndLevelAndBeginTheNext(level, manager)
var Level = argument0;
var Manager = argument1;

var MinionOffset = 50;
var HalfOfTheScreen = view_wport[0] / 2;

with Manager
{
    instance_destroy();
}

if instance_exists(oBall)
{
    with oBall
    {
        instance_destroy();
    }
}

if Level == 2
{
    instance_create(HalfOfTheScreen + MinionOffset, -250, oJellyfishMediumManager);
}
else if Level == 3
{
    instance_create(HalfOfTheScreen + MinionOffset, -250, oJellyfishBossManager);
}
