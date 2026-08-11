/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1EF70DC3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)show_debug_message("Tapped!");$(13_10)if (parent != noone){$(13_10)	UIManager.popupActive = false;$(13_10)	GameManager.resumeGame(); $(13_10)		$(13_10)	instance_destroy(parent); $(13_10)	instance_destroy();$(13_10)}"
/// @description Execute Code
show_debug_message("Tapped!");
if (parent != noone){
	UIManager.popupActive = false;
	GameManager.resumeGame(); 
		
	instance_destroy(parent); 
	instance_destroy();
}