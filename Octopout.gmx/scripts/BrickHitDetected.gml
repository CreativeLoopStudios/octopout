HitsBeforeDestroy -= 1;
        
if HitsBeforeDestroy == 0
{
    instance_destroy();
    CreateParticle(x, y, 5, oBrickDust);
}

if LastHitCount > HitsBeforeDestroy
{
    // Change current sprite to the next
    CurrentSprite += 1;
    image_index = CurrentSprite;
    LastHitCount = HitsBeforeDestroy;
}
