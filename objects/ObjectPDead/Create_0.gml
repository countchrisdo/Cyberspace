hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;
global.playerHP = 50;

//minor pause at death
sleep(50);

image_speed = 0;
image_index = 0;

ScreenShake(6,60);
audio_play_sound(SoundEnemyDeath,10,false);
game_set_speed(30,gamespeed_fps);
with (ObjectCamera) follow = other.id;


