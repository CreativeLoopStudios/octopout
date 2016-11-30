/// ChangeSoundtrack(track)
var Track = argument0;

if instance_exists(oSound)
{
    with oSound
    {
        CurrentTrack = Track;
        CurrentPlaying = false;
    }
}
