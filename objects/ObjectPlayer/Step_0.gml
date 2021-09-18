#region //Get Player Input

if (hascontrol)
{

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));

}
else
{	
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

#endregion

//Hp buffer calculation
if (damageable > 10) {
	damageable --;
}

#region //calculate movement
var move = key_right - key_left;

hsp = (move * walksp) + gunkickx;
gunkickx = 0;

vsp = (vsp + grv) + gunkicky;
gunkicky = 0;

//jumping
canjump -= 1;
if (canjump >0) && (key_jump)
{
	vsp = -10;
	canjump = 0;
}

#endregion

#region collide and move

//horizontal collision
if (place_meeting (x+hsp,y,ObjectWall))
{ 
	while (!place_meeting(x+sign(hsp),y,ObjectWall))
	{
		x = x + sign(hsp);	
	}
		hsp = 0;
}
		
x = x + hsp;

//Verticle collision
if (place_meeting (x,y+vsp,ObjectWall))
	{ 
		while (!place_meeting(x,y+sign(vsp),ObjectWall))
		{
			y = y + sign(vsp);	
		}
		vsp = 0;
	
	}
		
y = y + vsp;

#endregion

#region //Animation
var aimside = sign(mouse_x - x);
if (aimside != 0) image_xscale = aimside;

if (!place_meeting(x,y+1,ObjectWall)) 
{
	sprite_index = SpritePlayerAirborn;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
};
else 
{
	canjump = 10;
	if (sprite_index == SpritePlayerAirborn) 
	{
		audio_sound_pitch(SoundLanding,choose(0.8,1.0,1.2));
		audio_play_sound(SoundLanding,4,false);
		repeat(5)
			{
				with (instance_create_layer(x,bbox_bottom,"Player",ObjectDust))
				{
					vsp = 0;
				}
			}
	}
	
	
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = SpritePlayer;
	}
	else
	{
		sprite_index = SpritePlayerRun;
		if (aimside != sign(hsp)) sprite_index = SpritePlayerRunB;
	}
}

#endregion
	
	