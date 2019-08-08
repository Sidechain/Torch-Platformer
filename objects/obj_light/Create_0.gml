/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C6383F4
/// @DnDArgument : "code" "surf = surface_create(room_width, room_height);$(13_10)// surface = surface_create(1024,768);$(13_10)$(13_10)surface_set_target(surf);$(13_10)$(13_10)draw_clear_alpha(c_black, 0);$(13_10)$(13_10)surface_reset_target();"
surf = surface_create(room_width, room_height);
// surface = surface_create(1024,768);

surface_set_target(surf);

draw_clear_alpha(c_black, 0);

surface_reset_target();