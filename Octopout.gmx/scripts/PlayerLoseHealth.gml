/// PlayerLoseHealth()
if instance_exists(oPlayerHealth)
{
    with oPlayerHealth
    {
        health -= 1;
        LostedHealth = true;
    }
}
