/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 32381BDB
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.gamePaused){$(13_10)	exit; $(13_10)}$(13_10)$(13_10)$(13_10)if (prizeWon == true){$(13_10)	show_debug_message("Destroying prize, showing popup");$(13_10)$(13_10)	var imageIndex = floor(image_index); $(13_10)	show_debug_message(imageIndex); $(13_10)	$(13_10)	UIManager.popupPrizeWindow(dbName, image_index);$(13_10)	GameManager.pauseGame(); $(13_10)	instance_destroy(); $(13_10)}$(13_10)$(13_10)if (x < -128){$(13_10)	prizeWon = true; $(13_10)}$(13_10)"
/// @description Execute Code
if (global.gamePaused){
	exit; 
}


if (prizeWon == true){
	show_debug_message("Destroying prize, showing popup");

	var imageIndex = floor(image_index); 
	show_debug_message(imageIndex); 
	
	UIManager.popupPrizeWindow(dbName, image_index);
	GameManager.pauseGame(); 
	instance_destroy(); 
}

if (x < -128){
	prizeWon = true; 
}