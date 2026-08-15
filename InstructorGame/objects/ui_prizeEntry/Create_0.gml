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
/// @DnDArgument : "code" "$(13_10)draw_enable_drawevent(true);$(13_10)$(13_10)name = global.itemDatabase[$prizeName].displayName; $(13_10)amount = global.playerInventory[$prizeName][variant];$(13_10)sprite = global.itemDatabase[$prizeName].sprite;$(13_10)sellValue = global.itemDatabase[$prizeName].value;$(13_10)$(13_10)//name - "Bingus";$(13_10)//amount = 3; $(13_10)//sprite = sprite_cranePrizeAlien; $(13_10)$(13_10)sellButton = instance_create_layer($(13_10)x, $(13_10)y + 110, $(13_10)"Instances", $(13_10)ui_sellPrizeButton,$(13_10){$(13_10)	parentObject: self, $(13_10)	prizeName: prizeName, $(13_10)	variant: variant, $(13_10)	amount: 1, $(13_10)	value: sellValue$(13_10)}); $(13_10)$(13_10)$(13_10)show_debug_message("Bottom of create");"

draw_enable_drawevent(true);

name = global.itemDatabase[$prizeName].displayName; 
amount = global.playerInventory[$prizeName][variant];
sprite = global.itemDatabase[$prizeName].sprite;
sellValue = global.itemDatabase[$prizeName].value;

//name - "Bingus";
//amount = 3; 
//sprite = sprite_cranePrizeAlien; 

sellButton = instance_create_layer(
x, 
y + 110, 
"Instances", 
ui_sellPrizeButton,
{
	parentObject: self, 
	prizeName: prizeName, 
	variant: variant, 
	amount: 1, 
	value: sellValue
}); 


show_debug_message("Bottom of create");