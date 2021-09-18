/// @description Placeholder HP GUI & GlitchEffect

// Activating the shader
if (global.playerHP <= 25) 
{
	BktGlitch_activate();
// Quickly setting all parameters at once using a preset
BktGlitch_config_preset(BktGlitchPreset.A);
// Additional tweaking
BktGlitch_set_intensity(0.833333);
BktGlitch_set_line_shift(0.004000);
BktGlitch_set_line_speed(0.010000);
BktGlitch_set_line_resolution(0.180000);
BktGlitch_set_line_drift(0.100000);
BktGlitch_set_line_vertical_shift(0.100000);
BktGlitch_set_noise_level(0.000100);
BktGlitch_set_jumbleness(0.300000);
BktGlitch_set_jumble_speed(1.000000);
BktGlitch_set_jumble_resolution(0.100000);
BktGlitch_set_jumble_shift(0.150000);
BktGlitch_set_channel_shift(0.004000);
BktGlitch_set_channel_dispersion(0.002500);
BktGlitch_set_shakiness(0.300000);
BktGlitch_set_rng_seed(0.100000);
// Drawing the application surface
draw_surface(application_surface, 0, 0);
BktGlitch_deactivate();
}
else
{
	BktGlitch_activate();
// Quickly setting all parameters at once using a preset
BktGlitch_config_preset(BktGlitchPreset.A);

BktGlitch_set_intensity(0.10);
BktGlitch_set_line_shift(0.005333);
BktGlitch_set_line_speed(0.050000);
BktGlitch_set_line_resolution(0.080000);
BktGlitch_set_line_drift(0.100000);
BktGlitch_set_line_vertical_shift(0.100000);
BktGlitch_set_noise_level(0.100000);
BktGlitch_set_jumbleness(0.050000);
BktGlitch_set_jumble_speed(0.050000);
BktGlitch_set_jumble_resolution(0.100000);
BktGlitch_set_jumble_shift(0.100000);
BktGlitch_set_channel_shift(0.004000);
BktGlitch_set_channel_dispersion(0.012500);
BktGlitch_set_shakiness(0.300000);
BktGlitch_set_rng_seed(0.100000);
// Done with the shader (this is really just shader_reset)!

draw_surface(application_surface, 0, 0);
BktGlitch_deactivate();
}

//hp counter
DrawSetText(c_black, FontMenu, fa_right, fa_bottom);

draw_set_color(c_black);
draw_text(95,60,string(global.playerHP));
draw_text(90,65,string(global.playerHP)); 
draw_text(85,60,string(global.playerHP)); 
draw_text(90,55,string(global.playerHP)); 

draw_set_color(c_white);
draw_text(90,60,string(global.playerHP));

///@desc Draw Score

if (room != Menu) && (instance_exists(ObjectPlayer)) && (global.kills > 0)
{
	ObjectGame.killtextscale = max(ObjectGame.killtextscale * 0.95,1);
	DrawSetText(c_black, FontMenu,fa_right, fa_top);
	draw_text_transformed(RES_W-8,12,string(global.kills) + " Pointless Murders :(", ObjectGame.killtextscale,ObjectGame.killtextscale,0)
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills) + " Pointless Murders :(", ObjectGame.killtextscale,ObjectGame.killtextscale,0)
}