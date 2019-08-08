/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 74E6BFC4
/// @DnDArgument : "code" "if (OnPlayer && obj_player.image_xscale = 1) {$(13_10)	x = obj_player.x + 5;$(13_10)	y = obj_player.y - 8;$(13_10)} else if (OnPlayer && obj_player.image_xscale = -1) { $(13_10)	y = obj_player.y - 8;$(13_10)	x = obj_player.x - 7; $(13_10)	}$(13_10)//instance_create_layer(x,y,"Instances",oParticleLantern);"
if (OnPlayer && obj_player.image_xscale = 1) {
	x = obj_player.x + 5;
	y = obj_player.y - 8;
} else if (OnPlayer && obj_player.image_xscale = -1) { 
	y = obj_player.y - 8;
	x = obj_player.x - 7; 
	}
//instance_create_layer(x,y,"Instances",oParticleLantern);