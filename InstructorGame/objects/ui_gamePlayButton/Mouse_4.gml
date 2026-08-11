/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 089290C2
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (linkRoomName == "quit"){$(13_10)	game_end(); $(13_10)	return;$(13_10)}$(13_10)$(13_10)if (global.roomDatabase[$linkRoomName].cost > global.money){$(13_10)	$(13_10)}$(13_10)else {$(13_10)GameManager.reduceMoney(global.roomDatabase[$linkRoomName].cost);$(13_10)show_debug_message("Money is now: " + string(global.money));$(13_10)GameManager.switchRoom(linkRoomName); $(13_10)}"
/// @description Execute Code

if (linkRoomName == "quit"){
	game_end(); 
	return;
}

if (global.roomDatabase[$linkRoomName].cost > global.money){
	
}
else {
GameManager.reduceMoney(global.roomDatabase[$linkRoomName].cost);
show_debug_message("Money is now: " + string(global.money));
GameManager.switchRoom(linkRoomName); 
}