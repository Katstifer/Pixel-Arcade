/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 44BB256D
/// @DnDArgument : "funcName" "destroySelf"
function destroySelf() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5741D492
	/// @DnDParent : 44BB256D
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)UIManager.popupActive = false; $(13_10)instance_destroy(replayButton);$(13_10)instance_destroy(homeButton);$(13_10)$(13_10)if (replayTapped == true){$(13_10)GameManager.resetClawGame(); $(13_10)}$(13_10)$(13_10)instance_destroy(); "
	/// @description Execute Code
	UIManager.popupActive = false; 
	instance_destroy(replayButton);
	instance_destroy(homeButton);
	
	if (replayTapped == true){
	GameManager.resetClawGame(); 
	}
	
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F191D1A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)depth = -98;$(13_10)x = room_width / 2; $(13_10)y = room_height /2; $(13_10)$(13_10)show_debug_message("Pause menu opened"); $(13_10)$(13_10)replayButton = instance_create_layer($(13_10)x, $(13_10)y, $(13_10)"Popups", $(13_10)ui_replayButton); $(13_10)$(13_10)replayButton.parent = self; $(13_10)replayButton.targetWidth = (room_width / 3); $(13_10)replayButton.targetHeight = 128;$(13_10)$(13_10)homeButton = instance_create_layer($(13_10)x, $(13_10)y  + 64, $(13_10)"Popups", $(13_10)ui_homeButton);$(13_10)$(13_10)$(13_10)homeButton.parent = self; $(13_10)homeButton.resumesGame = true;$(13_10)homeButton.targetWidth = (room_width / 3); $(13_10)homeButton.targetHeight = 96;$(13_10)$(13_10)"
/// @description Execute Code
/// @description Execute Code
depth = -98;
x = room_width / 2; 
y = room_height /2; 

show_debug_message("Pause menu opened"); 

replayButton = instance_create_layer(
x, 
y, 
"Popups", 
ui_replayButton); 

replayButton.parent = self; 
replayButton.targetWidth = (room_width / 3); 
replayButton.targetHeight = 128;

homeButton = instance_create_layer(
x, 
y  + 64, 
"Popups", 
ui_homeButton);


homeButton.parent = self; 
homeButton.resumesGame = true;
homeButton.targetWidth = (room_width / 3); 
homeButton.targetHeight = 96;