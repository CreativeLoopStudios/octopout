/// EndLevelAndBeginTheNext(level, manager)
var Level = argument0;

var MinionOffset = 50;
var HalfOfTheScreen = view_wport[0] / 2;

if instance_exists(oBall)
{
    with oBall
    {
        instance_destroy();
    }
}

// show level message
CreateNextLevelMessage();

if Level == 2
{
    var X = view_wport[0] / 8;
    instance_create(X * 2 + MinionOffset, -250, oJellyfishMiniManager);
    instance_create(X * 4 + MinionOffset, -250, oJellyfishMiniManager);
    instance_create(X * 6 + MinionOffset, -250, oJellyfishMiniManager);
    
    ChangeSoundtrack(aTrackOctobissal2);
}
else if Level == 3
{
    instance_create(HalfOfTheScreen + MinionOffset, -250, oJellyfishBossManager);
    
    ChangeSoundtrack(aTrackOctomestre3);
}
