/// collision with ball
var BallThatHit = instance_place(x, y, oBall);
if instance_exists(BallThatHit)
{
    with BallThatHit
    {
        move_bounce_all(true);
    }
    
    if(CanBreak)
    {
        BrickHitDetected();
    }
}
