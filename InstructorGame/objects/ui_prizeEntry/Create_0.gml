/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 43CF7360
/// @DnDArgument : "funcName" "destroySelf"
function destroySelf() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 002F48F7
	/// @DnDParent : 43CF7360
	/// @DnDArgument : "code" "instance_destroy(sellButton);$(13_10)instance_destroy(); "
	instance_destroy(sellButton);
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F790A10
/// @DnDArgument : "code" "show_debug_message($(13_10)    "CREATE: " + string(id)$(13_10)    + " visible=" + string(visible)$(13_10)    + " layer=" + string(layer)$(13_10));$(13_10)$(13_10)draw_enable_drawevent(true);$(13_10)$(13_10)name = global.itemDatabase[$prizeName].displayName; $(13_10)amount = global.playerInventory[$prizeName][variant];$(13_10)sprite = global.itemDatabase[$prizeName].sprite;$(13_10)$(13_10)/*$(13_10)sellButton = instance_create_layer($(13_10)x, $(13_10)y + 160, $(13_10)"Instances", $(13_10)ui_sellPrizeButton); $(13_10)$(13_10)sellButton.parentObject = self; $(13_10)sellButton.prizeName = prizeName; $(13_10)sellButton.variant = variant; $(13_10)sellButton.amount = 1;*/$(13_10)$(13_10)show_debug_message("Bottom of create");"
show_debug_message(
    "CREATE: " + string(id)
    + " visible=" + string(visible)
    + " layer=" + string(layer)
);

draw_enable_drawevent(true);

name = global.itemDatabase[$prizeName].displayName; 
amount = global.playerInventory[$prizeName][variant];
sprite = global.itemDatabase[$prizeName].sprite;

/*
sellButton = instance_create_layer(
x, 
y + 160, 
"Instances", 
ui_sellPrizeButton); 

sellButton.parentObject = self; 
sellButton.prizeName = prizeName; 
sellButton.variant = variant; 
sellButton.amount = 1;*/

show_debug_message("Bottom of create");/**/