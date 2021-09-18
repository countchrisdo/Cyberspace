/// @description 
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

//collision event
if (place_meeting(x,y,ParShootable))
{
		with (instance_place(x,y,ParShootable))
		{
		HP = HP - 1;
		flash = 3;
		hitfrom = other.direction;
		}

instance_destroy();
}

if (place_meeting(x,y,ObjectWall))
{	
			spd = 0;
			instance_change(ObjectHitSpark,true);
			layer_add_instance("DarkTilesMetroidVania",id);
			depth += 1;
			
}

