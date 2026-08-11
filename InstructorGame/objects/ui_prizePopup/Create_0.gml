/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D5A8D27
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)depth = -98;$(13_10)x = room_width / 2; $(13_10)y = room_height /2; $(13_10)$(13_10)show_debug_message("Popup created"); $(13_10)$(13_10)doneButton = instance_create_layer($(13_10)x, $(13_10)y + 248, $(13_10)"Popups", $(13_10)ui_doneButton); $(13_10)$(13_10)$(13_10)doneButton.parent = self; $(13_10)doneButton.targetWidth = (room_width / 3); $(13_10)doneButton.targetHeight = 64;$(13_10)$(13_10)show_debug_message(variant);"
/// @description Execute Code
depth = -98;
x = room_width / 2; 
y = room_height /2; 

show_debug_message("Popup created"); 

doneButton = instance_create_layer(
x, 
y + 248, 
"Popups", 
ui_doneButton); 


doneButton.parent = self; 
doneButton.targetWidth = (room_width / 3); 
doneButton.targetHeight = 64;

show_debug_message(variant);