/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4AC9D16B
/// @DnDArgument : "funcName" "destroySelf"
function destroySelf() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 05408879
	/// @DnDParent : 4AC9D16B
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)show_debug_message("Resuming game from pauseMenu");$(13_10)GameManager.resumeGame();$(13_10)$(13_10)UIManager.popupActive = false; $(13_10)$(13_10)instance_destroy(resumeButton);$(13_10)instance_destroy(homeButton);$(13_10)instance_destroy(); $(13_10)$(13_10)"
	/// @description Execute Code
	show_debug_message("Resuming game from pauseMenu");
	GameManager.resumeGame();
	
	UIManager.popupActive = false; 
	
	instance_destroy(resumeButton);
	instance_destroy(homeButton);
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D5A8D27
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)depth = -98;$(13_10)x = room_width / 2; $(13_10)y = room_height /2; $(13_10)$(13_10)show_debug_message("Pause menu opened"); $(13_10)$(13_10)resumeButton = instance_create_layer($(13_10)x, $(13_10)y, $(13_10)"Popups", $(13_10)ui_resumeButton); $(13_10)$(13_10)resumeButton.parent = self; $(13_10)resumeButton.targetWidth = (room_width / 3); $(13_10)resumeButton.targetHeight = 128;$(13_10)$(13_10)homeButton = instance_create_layer($(13_10)x, $(13_10)y  + 64, $(13_10)"Popups", $(13_10)ui_homeButton);$(13_10)$(13_10)$(13_10)homeButton.parent = self; $(13_10)homeButton.resumesGame = true;$(13_10)homeButton.targetWidth = (room_width / 3); $(13_10)homeButton.targetHeight = 96;$(13_10)$(13_10)"
/// @description Execute Code
depth = -98;
x = room_width / 2; 
y = room_height /2; 

show_debug_message("Pause menu opened"); 

resumeButton = instance_create_layer(
x, 
y, 
"Popups", 
ui_resumeButton); 

resumeButton.parent = self; 
resumeButton.targetWidth = (room_width / 3); 
resumeButton.targetHeight = 128;

homeButton = instance_create_layer(
x, 
y  + 64, 
"Popups", 
ui_homeButton);


homeButton.parent = self; 
homeButton.resumesGame = true;
homeButton.targetWidth = (room_width / 3); 
homeButton.targetHeight = 96;