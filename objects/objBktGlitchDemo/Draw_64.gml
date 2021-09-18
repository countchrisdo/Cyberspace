/*
	By default, the shader adapts to the size of the application surface.
	You can pass your own resolution via the arguments of this function or by using
	the dedicated ones.
*/

// Activating the shader.
BktGlitch_activate();

// Getting uniform values from the user interface, you can ignore this.
pass_uniforms_from_ui();

/* 
    Remember, all uniforms need to be set for the shader to work.
	BktGlitch_activate takes care of the basic ones, though you can
	still set things like time and resolution manually.
	
    This is what a further configuration could look like:
    
        We can choose one of the presets, and tweak only the values we want: 
        
            BktGlitch_set_preset(BktGlitch.presetA); 
            BktGlitch_set_line_resolution(0.420000);
            BktGlitch_set_line_drift(0.249702);
            BktGlitch_set_line_vertical_shift(0.713333);
        
        etc..
    
        We can also use configuration one-liners, such as:
    
            BktGlitch_config_zero(); - this sets all tweaking parameters to zero
            
            or
            
            BktGlitch_config(0.004, 0.01, 1, 0, 0, 0, 5.333, 0.2, 0.15, 0.5, 0.00233, 0.0025, 0.5, 1, 0); - sets all tweaking parameters at once
*/

// Drawing with shader active! 
// draw_surface(application_surface, 0, 0);
draw_surface_stretched(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height());

// Done with the shader (this is really just shader_reset)!
BktGlitch_deactivate();

// Draw the UI normally
draw_ui();