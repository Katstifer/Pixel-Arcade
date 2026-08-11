/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 367C0697
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (linkRoomName == "quit"){$(13_10)	game_end(); $(13_10)	return;$(13_10)}$(13_10)$(13_10)GameManager.switchRoom(linkRoomName); "
/// @description Execute Code

if (linkRoomName == "quit"){
	game_end(); 
	return;
}

GameManager.switchRoom(linkRoomName);