/// @description 

if (instance_exists(owner)) {
	x = owner.x;
	y = owner.y+10;

	image_xscale = abs(owner.image_xscale);
	image_yscale = abs(owner.image_yscale);

	if (instance_exists(ObjectPlayer))  
	{
		if (ObjectPlayer.x < x) image_yscale = -image_yscale;
		if (point_distance(ObjectPlayer.x,ObjectPlayer.y,x,y) < 600)
		{
			image_angle = point_direction(x,y,ObjectPlayer.x,ObjectPlayer.y);
			countdown--;
			if (countdown <= 0)
			{
				countdown = countdownrate;
				if (!collision_line(x,y,ObjectPlayer.x,ObjectPlayer.y,ObjectWall,false,false))
				{
					ScreenShake(1,1);
					audio_sound_pitch(SoundBlasterBolt,choose(0.1,0.2));
					audio_play_sound(SoundBlasterBolt,5,false);
					with (instance_create_layer(x,y+5,"Bullets",ObjectEBullet))
					{
						spd = 10;
						direction = other.image_angle + random_range(-2,2);
						image_angle = direction;
					}	
				}
			}
		}
	}
}