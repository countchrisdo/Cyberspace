//cursor trail 
// Insert current mouse postion in the list
ds_list_insert(trail_x, 0, mouse_x);
ds_list_insert(trail_y, 0, mouse_y);

// Remove the last point if exceed the maximum points limit
if ds_list_size(trail_x) >= trail_steps
{
	ds_list_delete(trail_x, ds_list_size(trail_x) - 1);
	ds_list_delete(trail_y, ds_list_size(trail_y) - 1);
}
	