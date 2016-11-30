/// PlaySoundEffect(var, audio, priority, volume)
var SoundVar = argument0;
var Audio = argument1;
var Priority = argument2;
var Volume = argument3;

if audio_exists(SoundVar)
{
    audio_stop_sound(SoundVar);
    audio_play_sound(SoundVar, Priority, false);
    audio_sound_gain(SoundVar, Volume, 0);
}
else
{
    SoundVar = audio_play_sound(Audio, Priority, false);
    audio_sound_gain(SoundVar, Volume, 0);
}

return SoundVar;
