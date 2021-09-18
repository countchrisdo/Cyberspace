/// @description Draw Menu

//setting key stuff
draw_set_font(FontMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

// Activating the shader
BktGlitch_activate();

// Quickly setting all parameters at once using a preset
BktGlitch_config_preset(BktGlitchPreset.A);

// Additional tweaking
BktGlitch_set_intensity(0.366667);
BktGlitch_set_line_shift(0.004000);
BktGlitch_set_line_speed(0.010000);
BktGlitch_set_line_resolution(0.240000);
BktGlitch_set_line_drift(0.073333);
BktGlitch_set_line_vertical_shift(0.000000);
BktGlitch_set_noise_level(0.053333);
BktGlitch_set_jumbleness(0.053333);
BktGlitch_set_jumble_speed(1.000000);
BktGlitch_set_jumble_resolution(0.053333);
BktGlitch_set_jumble_shift(0.066667);
BktGlitch_set_channel_shift(0.004000);
BktGlitch_set_channel_dispersion(0.002500);
BktGlitch_set_shakiness(0.500000);
BktGlitch_set_rng_seed(0.026667);

// Drawing the application surface
draw_surface(application_surface, 0, 0);

// Done with the shader (this is really just shader_reset)!
BktGlitch_deactivate();

//drawing real GUI
for (var i = 0; i < menu_items; i++) //remember ++ adds 1 every step
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;	
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	
	//fake stroke on text
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);

	draw_set_color(col);
	draw_text(xx,yy,txt);
}

draw_set_color(c_black);
draw_rectangle(gui_width,gui_height-300,gui_width+900,gui_height,false);
