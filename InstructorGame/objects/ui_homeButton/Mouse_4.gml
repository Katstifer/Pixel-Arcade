/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 445DC4EC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (parent != noone){$(13_10)	UIManager.popupActive = false;$(13_10)	GameManager.switchRoom(linkRoomName); $(13_10)		$(13_10)	parent.destroySelf(); $(13_10)}"
/// @description Execute Code
if (parent != noone){
	UIManager.popupActive = false;
	GameManager.switchRoom(linkRoomName); 
		
	parent.destroySelf(); 
}