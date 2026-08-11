/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 43CF7360
/// @DnDArgument : "funcName" "destroySelf"
function destroySelf() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 002F48F7
	/// @DnDParent : 43CF7360
	/// @DnDArgument : "code" ""}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F790A10
/// @DnDArgument : "code" "$(13_10)name = global.itemDatabase[$prizeName].displayName; $(13_10)amount = global.playerInventory[$prizeName][variant];$(13_10)sprite = global.itemDatabase[$prizeName].sprite;"

name = global.itemDatabase[$prizeName].displayName; 
amount = global.playerInventory[$prizeName][variant];
sprite = global.itemDatabase[$prizeName].sprite;