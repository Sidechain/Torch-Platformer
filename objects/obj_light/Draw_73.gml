/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E8E814A
/// @DnDArgument : "code" "if (!surface_exists(surf)) {$(13_10)	surf = surface_create(room_width, room_height);$(13_10)} else {$(13_10)	if (view_current == 0) {$(13_10)		draw_surface(surf, 0, 0);$(13_10)	}$(13_10)}$(13_10)"
if (!surface_exists(surf)) {
	surf = surface_create(room_width, room_height);
} else {
	if (view_current == 0) {
		draw_surface(surf, 0, 0);
	}
}