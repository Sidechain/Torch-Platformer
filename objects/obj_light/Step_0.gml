/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1838B209
/// @DnDArgument : "code" "if (surface_exists(surf)) {$(13_10)	surface_set_target(surf);$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_rectangle(0,0,room_width,room_height,0);$(13_10)	//draw_set_alpha(1);$(13_10)	//surface_reset_target();$(13_10)	gpu_set_blendmode(bm_subtract);$(13_10)	draw_set_color(c_white);$(13_10)	$(13_10)	with (oLantern)$(13_10)        draw_circle(x + random_range(-0.5, 0.5), y + random_range(-0.5, 0.5), 30 + random_range(-0.5, 0.5), false);$(13_10)            $(13_10)	with (oLanternDim)$(13_10)        draw_circle(x + random_range(-0.75, 0.75), y + random_range(-0.75, 0.75), 20 + random_range(-0.5, 0.5), false);$(13_10)            $(13_10)    with (oParticleLantern)$(13_10)        if (image_xscale > 0.25)$(13_10)            draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 2 + random_range(-1, 1), false);$(13_10)    $(13_10)	gpu_set_blendmode(bm_normal);$(13_10)	draw_set_alpha(1);$(13_10)	surface_reset_target();$(13_10)	$(13_10)} else {$(13_10)	surf = surface_create(room_width,room_height);$(13_10)	surface_set_target(surf);$(13_10)	draw_clear_alpha(c_black, 0);$(13_10)	surface_reset_target();$(13_10)}$(13_10)$(13_10) //background_x[1] -= 0.5;"
if (surface_exists(surf)) {
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0,0,room_width,room_height,0);
	//draw_set_alpha(1);
	//surface_reset_target();
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	
	with (oLantern)
        draw_circle(x + random_range(-0.5, 0.5), y + random_range(-0.5, 0.5), 30 + random_range(-0.5, 0.5), false);
            
	with (oLanternDim)
        draw_circle(x + random_range(-0.75, 0.75), y + random_range(-0.75, 0.75), 20 + random_range(-0.5, 0.5), false);
            
    with (oParticleLantern)
        if (image_xscale > 0.25)
            draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 2 + random_range(-1, 1), false);
    
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	
} else {
	surf = surface_create(room_width,room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}

 //background_x[1] -= 0.5;