/// @description 

#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W,RES_H);


//cursor
window_set_cursor (cr_none)
cursor_sprite = SpriteCustomCursor;

//glow cursor

// Maximum number of line points
trail_steps = 30;

// Initialize lists for mouse positions (x, y)
trail_x = ds_list_create();
trail_y = ds_list_create();

//global variables
global.playerHP = 100;

global.kills = 0;
global.killsthisroom = 0;

global.hasgun = false;

//variables
killtextscale = 1;




