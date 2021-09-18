/// @description cursor drawing

//cursor 
// Init a primitive drawing
draw_primitive_begin(pr_linelist);

	// Stores the size of list
	var l_size = ds_list_size(trail_x);
	
	// List iteration
	for (var i = 0; i < l_size; i++) 
	{
		// Current position
		var x1 = ds_list_find_value(trail_x, i);
		var y1 = ds_list_find_value(trail_y, i);
		
		// Next position
		var x2 = ds_list_find_value(trail_x, min(i + 1, l_size - 1));
		var y2 = ds_list_find_value(trail_y, min(i + 1, l_size - 1));
		
		// Set the line 'thickness'
		var rr = 16 - ((i / l_size) * 16);
		
		// Direction
		var dd = point_direction(x1, y1, x2, y2);
		
		// Opacity
		var aa = 1 - ((i / l_size));
		
		// Color
		var cc = make_color_hsv((current_time * 0.5) mod 255, 255, 255);
		
		// Draw first vertice
	    draw_vertex_color(	x1 + lengthdir_x(rr, dd + 90), 
							y1 + lengthdir_y(rr, dd + 90), 
							cc, aa);
		
		// Draw second vertice only if is not the fisrt or last point
		if i != 0 or i != l_size-1
		draw_vertex_color(	x1 + lengthdir_x(rr, dd - 90), 
							y1 + lengthdir_y(rr, dd - 90), 
							cc, aa);
	}

// Finishes primitive drawing
draw_primitive_end();



