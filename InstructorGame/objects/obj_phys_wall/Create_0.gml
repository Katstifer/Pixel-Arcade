/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7990465C
/// @DnDArgument : "code" "x1 = x - room_width / 2;$(13_10)x2 = x + room_width / 2;$(13_10)$(13_10)y1 = y - 16; $(13_10)y2 = y + 16;$(13_10)$(13_10)show_debug_message("Top Left: " + string(x1) + ", " + string(y1)); $(13_10)show_debug_message("Bottom Right: " + string(x2) + ", " + string(y2)); "
x1 = x - room_width / 2;
x2 = x + room_width / 2;

y1 = y - 16; 
y2 = y + 16;

show_debug_message("Top Left: " + string(x1) + ", " + string(y1)); 
show_debug_message("Bottom Right: " + string(x2) + ", " + string(y2));