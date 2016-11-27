if (!Pause)
{
    Pause = 1;
    instance_deactivate_all(true);
}
else
{
    Pause = 0;
    instance_activate_all();
}
