/// PlayerGainHealth()
if instance_exists(oPlayer)
    and instance_exists(oPlayerHealth)
{
    with oPlayerHealth
    {
        health += 1;
        HealthAnimation = true;
    }
}

