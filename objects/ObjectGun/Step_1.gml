//Shooty gun go blam blam
x = ObjectPlayer.x+5;
y = ObjectPlayer.y-2;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 10;
	ScreenShake(1,5);
	audio_sound_pitch(SoundBlasterBolt,choose(0.7,1.0,1.3));
	audio_play_sound(SoundBlasterBolt,5,false);
	with (instance_create_layer(x,y+5,"Bullets",ObjectBullet))
	{
		spd = 25;
		direction = other.image_angle + random_range(-2,2);
		image_angle = direction;
	}
	with (ObjectPlayer)
	{
		gunkickx = lengthdir_x(2.5, other.image_angle-180);
		gunkicky = lengthdir_y(1.0, other.image_angle-180);
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_x(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}