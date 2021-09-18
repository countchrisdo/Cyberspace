/// @description 
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (place_meeting(x,y,ObjectWall))
{	
			spd = 0;
			//turn into hitspark sprite
			instance_change(ObjectHitSpark,true);
}

