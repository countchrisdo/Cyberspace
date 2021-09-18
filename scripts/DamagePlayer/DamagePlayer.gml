// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DamagePlayer(){

if (damageable <= 25) 
	{
	global.playerHP = global.playerHP - 5;
	audio_play_sound(SoundLanding,5,false);
	damageable = damageable + 60;
	}

if (global.playerHP < 5)
{
	with (ObjectGun) instance_destroy();
	instance_change(ObjectPDead,true);

	//death animation direction
	direction = point_direction(other.x,other.y,x,y);
	hsp = lengthdir_x(6,direction);
	vsp = lengthdir_y(4,direction)-2;
	if (sign(hsp) !=0) image_xscale = sign(hsp);
	
	global.kills -= global.killsthisroom;
}
else
{	
ScreenShake(2,4);
direction = point_direction(other.x,other.y,x,y);
	hsp = lengthdir_x(6,direction)-1;
	vsp = lengthdir_y(4,direction)+1;
	if (sign(hsp) !=0) image_xscale = sign(hsp);	
}

}