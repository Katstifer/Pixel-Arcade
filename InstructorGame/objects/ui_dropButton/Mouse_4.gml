/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 05EA0816
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (hasPressed == false) {$(13_10)$(13_10)image_index = 1; $(13_10)Player.startClawDrop(); $(13_10)$(13_10)}$(13_10)else {$(13_10)	$(13_10)	if (hasGrabbed == false) {$(13_10)		Player.startClawGrab(); $(13_10)	}	$(13_10)}"
/// @description Execute Code

if (hasPressed == false) {

image_index = 1; 
Player.startClawDrop(); 

}
else {
	
	if (hasGrabbed == false) {
		Player.startClawGrab(); 
	}	
}