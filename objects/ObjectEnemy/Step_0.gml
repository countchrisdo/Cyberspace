//enemy
vsp = vsp + grv;

//Don't walk off edges
if(grounded and afraidofheights and !place_meeting(x+sprite_width / 2,y+1,ObjectWall))
{
 hsp = -hsp;
}


//horizontal collision
if (place_meeting (x+hsp,y,ObjectWall)) 
{ 
	while (!place_meeting(x+sign(hsp),y,ObjectWall))
	{
		x = x + sign(hsp);	
	}
		hsp = -hsp;
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

//Animation
if (!place_meeting(x,y+1,ObjectWall)) 
{
	grounded = false;
	sprite_index = SpecificSpriteAirborn;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
};
else 
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = SpecificSprite;
	}
	else
	{
		sprite_index = SpecificSpriteRun;
	}
}

if (hsp !=0) image_xscale = sign(hsp) * size;