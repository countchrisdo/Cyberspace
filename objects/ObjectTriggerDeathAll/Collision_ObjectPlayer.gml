/// @description Move to next room

with (ObjectPlayer)
{
	
	audio_sound_pitch(SoundBlasterBolt,choose(0.1,0.3));
	audio_play_sound(SoundBlasterBolt,5,false);
	global.playerHP = 0;
	DamagePlayer();
}