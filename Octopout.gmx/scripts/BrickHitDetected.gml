if LastHitCount > HitsBeforeDestroy
{
    // Change current sprite to the next
    CurrentSprite += 1;
    image_index = CurrentSprite;
    LastHitCount = HitsBeforeDestroy;
}
