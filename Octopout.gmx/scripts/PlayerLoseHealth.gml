/// PlayerLoseHealth()
if instance_exists(oPlayerHealth)
{
    with oPlayerHealth
    {
        health -= 1;
        HealthAnimation = true;
    }
}
