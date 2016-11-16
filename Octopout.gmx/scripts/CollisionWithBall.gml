/// collision with ball
var BallThatHit = instance_place(x, y, oBall);
if instance_exists(BallThatHit)
{
    HitsBeforeDestroy -= 1;
    
    if HitsBeforeDestroy == 0
    {
        with BallThatHit
        {
            move_bounce_all(true);
        }
        instance_destroy();
    }
}
