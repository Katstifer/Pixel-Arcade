/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 369AC41F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)show_debug_message("Escape pressed");$(13_10)$(13_10)if (global.roomDatabase[$currentRoomName].type == "game"){$(13_10)pauseGameWithMenu(); $(13_10)}"
/// @description Execute Code
show_debug_message("Escape pressed");

if (global.roomDatabase[$currentRoomName].type == "game"){
pauseGameWithMenu(); 
}