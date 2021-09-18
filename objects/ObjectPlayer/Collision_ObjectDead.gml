//health get
if global.playerHP <= 95
{
global.playerHP = global.playerHP + 5;
audio_play_sound(SoundMenuMove,5,false);
instance_destroy(other);
}