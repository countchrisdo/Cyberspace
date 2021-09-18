/// @description Update Camera

//Update destination
if (instance_exists(ObjectPlayer))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if ((follow).object_index == ObjectPDead)
	{
		x = xTo;
		y = yTo;
	}
}

//update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Keep camera center inside room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);


//screen shake
x += random_range(-shake_remain,shake_remain)
y += random_range(-shake_remain,shake_remain)
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (room != Menu) and (room != RoomEnding)
{
	if (layer_exists("FarBuildings"))
	{
	layer_x("FarBuildings",x/2);
	}

	if (layer_exists("BackBuildings"))
	{
	layer_x("BackBuildings",x/4)
	}

	if (layer_exists("CityForeground"))
	{
	layer_x("CityForeground",x/6);
	}
}