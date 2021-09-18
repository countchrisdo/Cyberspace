/// @description gun pickup

global.hasgun = true;
instance_create_layer(ObjectPlayer.x,ObjectPlayer.y,"Gun",ObjectGun);
audio_play_sound(SoundMenuMove,5,false);
instance_destroy();

