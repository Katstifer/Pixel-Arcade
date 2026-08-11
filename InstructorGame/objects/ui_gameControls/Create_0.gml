/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 689D371F
/// @DnDArgument : "funcName" "destroySelf"
function destroySelf() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0E7BFF36
	/// @DnDParent : 689D371F
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)instance_destroy(leftButton); $(13_10)instance_destroy(rightButton);$(13_10)instance_destroy(pauseButton); $(13_10)instance_destroy(dropButton); $(13_10)instance_destroy(); $(13_10)$(13_10)"
	/// @description Execute Code
	instance_destroy(leftButton); 
	instance_destroy(rightButton);
	instance_destroy(pauseButton); 
	instance_destroy(dropButton); 
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2ACF763A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)show_debug_message("Creating UI controls");$(13_10)$(13_10)leftButton = instance_create_layer($(13_10)room_width / 5, $(13_10)room_height - 32, $(13_10)"Instances", $(13_10)ui_leftButton$(13_10)); $(13_10)$(13_10)rightButton = instance_create_layer($(13_10)4 * (room_width / 5), $(13_10)room_height - 32, $(13_10)"Instances", $(13_10)ui_rightButton$(13_10)); $(13_10)$(13_10)dropButton = instance_create_layer($(13_10)room_width / 2, $(13_10)room_height - 32, $(13_10)"Instances", $(13_10)ui_dropButton$(13_10)); $(13_10)$(13_10)pauseButton = instance_create_layer($(13_10)room_width / 8, $(13_10)32, $(13_10)"Instances", $(13_10)ui_pauseButton$(13_10)); "
/// @description Execute Code
show_debug_message("Creating UI controls");

leftButton = instance_create_layer(
room_width / 5, 
room_height - 32, 
"Instances", 
ui_leftButton
); 

rightButton = instance_create_layer(
4 * (room_width / 5), 
room_height - 32, 
"Instances", 
ui_rightButton
); 

dropButton = instance_create_layer(
room_width / 2, 
room_height - 32, 
"Instances", 
ui_dropButton
); 

pauseButton = instance_create_layer(
room_width / 8, 
32, 
"Instances", 
ui_pauseButton
);