if (done == 0) 
{
	vsp = vsp + grv;

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
			if (vsp > 0) 
			{
				done = 1;
				image_index = 1;
				alarm[0] = 60;
			}
			while (!place_meeting(x,y+sign(vsp),ObjectWall))
			{
				y = y + sign(vsp);	
			}
			vsp = 0;
	
		}
		
	y = y + vsp;
}