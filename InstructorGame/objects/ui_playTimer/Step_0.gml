/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 37D166DC
/// @DnDArgument : "code" "/// @description Execute Code;$(13_10)if (global.gamePaused){$(13_10)	exit; $(13_10)}$(13_10)$(13_10)timerText = string(Player.currentPlayTime); "
/// @description Execute Code;
if (global.gamePaused){
	exit; 
}

timerText = string(Player.currentPlayTime);