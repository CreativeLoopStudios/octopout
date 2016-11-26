instance_create(0, 0, oPauseMenu);
instance_create(0, 0, oGame);
instance_create(0, 0, oParticules);
instance_create(0, 0, oBackgroundGenerator);
instance_create(0, 0, oPlayerHealth);

if global.Debug
{
    instance_create(0, 0, oFPS);
}
