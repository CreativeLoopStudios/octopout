HitsBeforeDestroy -= 1;
part_particles_create(global.ParticulesSystem, x, y, global.BrickDustParticule, 5);
        
if HitsBeforeDestroy == 0
{
    instance_destroy();
}

if LastHitCount > HitsBeforeDestroy
{
    // Change current sprite to the next
    CurrentSprite += 1;
    image_index = CurrentSprite;
    LastHitCount = HitsBeforeDestroy;
}
