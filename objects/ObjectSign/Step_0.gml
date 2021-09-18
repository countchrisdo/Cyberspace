/// @description showing text

if (instance_exists(ObjectPlayer)) && (point_in_circle(ObjectPlayer.x,ObjectPlayer.y,x,y,64)) and (!instance_exists(ObjectText))
{
	nearby = true
	if (keyboard_check_pressed(ord("E")))
		{
		with (instance_create_layer(x,y-64,layer,ObjectText))
		{
			text = other.text;
			length = string_length(text);	
		}
		with (ObjectCamera)
		{
			follow = other.id;
		}
	}
} else nearby = false
