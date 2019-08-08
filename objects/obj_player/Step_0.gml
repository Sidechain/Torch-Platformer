/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B64A2A9
/// @DnDArgument : "code" "// Get input $(13_10)kLeft = -keyboard_check(vk_left); $(13_10)kRight = keyboard_check(vk_right); $(13_10)kJump = keyboard_check_pressed(vk_up);$(13_10)$(13_10)// Use input $(13_10)move = kLeft + kRight; $(13_10)hsp = move * moveSpeed; $(13_10)if (vsp < 10) { $(13_10)	vsp += grav;$(13_10)	};$(13_10)$(13_10)if (place_meeting(x, y + 1, obj_wall)) { $(13_10)	vsp = kJump * -jumpSpeed $(13_10)	}$(13_10)$(13_10)// H Collisions $(13_10)if (place_meeting(x + hsp, y, obj_wall)) { $(13_10)	while (!place_meeting(x + sign(hsp), y, obj_wall)) {$(13_10)		x += sign(hsp); $(13_10)		} hsp = 0; $(13_10)	} x += hsp;$(13_10)$(13_10)// v Collisions $(13_10)if (place_meeting(x, y + vsp, obj_wall)) { $(13_10)	while (!place_meeting(x, y + sign(vsp), obj_wall)) { $(13_10)		y += sign(vsp); $(13_10)		} vsp = 0; $(13_10)	} y += vsp;$(13_10)	$(13_10)	$(13_10)	// Walking animation when moving$(13_10)if (!oLantern.OnPlayer && hsp != 0) {$(13_10)	sprite_index = player_walking;$(13_10)} else if (oLantern.OnPlayer && hsp != 0) {$(13_10)	sprite_index = player_walking1;$(13_10)} else if (oLantern.OnPlayer) { $(13_10)	sprite_index =player_idle1; $(13_10)	} else { $(13_10)		sprite_index = player_idle; $(13_10)		}$(13_10)	$(13_10)	$(13_10)	$(13_10)	// Control direction facing$(13_10)if (xprevious < x) {$(13_10)	image_xscale =1$(13_10)} else if (xprevious > x) {$(13_10)	image_xscale = -1$(13_10)}$(13_10)$(13_10)$(13_10)"
// Get input 
kLeft = -keyboard_check(vk_left); 
kRight = keyboard_check(vk_right); 
kJump = keyboard_check_pressed(vk_up);

// Use input 
move = kLeft + kRight; 
hsp = move * moveSpeed; 
if (vsp < 10) { 
	vsp += grav;
	};

if (place_meeting(x, y + 1, obj_wall)) { 
	vsp = kJump * -jumpSpeed 
	}

// H Collisions 
if (place_meeting(x + hsp, y, obj_wall)) { 
	while (!place_meeting(x + sign(hsp), y, obj_wall)) {
		x += sign(hsp); 
		} hsp = 0; 
	} x += hsp;

// v Collisions 
if (place_meeting(x, y + vsp, obj_wall)) { 
	while (!place_meeting(x, y + sign(vsp), obj_wall)) { 
		y += sign(vsp); 
		} vsp = 0; 
	} y += vsp;
	
	
	// Walking animation when moving
if (!oLantern.OnPlayer && hsp != 0) {
	sprite_index = player_walking;
} else if (oLantern.OnPlayer && hsp != 0) {
	sprite_index = player_walking1;
} else if (oLantern.OnPlayer) { 
	sprite_index =player_idle1; 
	} else { 
		sprite_index = player_idle; 
		}
	
	
	
	// Control direction facing
if (xprevious < x) {
	image_xscale =1
} else if (xprevious > x) {
	image_xscale = -1
}