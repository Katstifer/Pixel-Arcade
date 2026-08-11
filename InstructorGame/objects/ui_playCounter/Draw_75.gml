/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66BC0768
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)textString = ("Plays: " + string(GameManager.playsLeft));$(13_10)$(13_10)draw_self(); $(13_10)$(13_10)draw_set_font(Jersey_24P); $(13_10)draw_set_color(c_white); $(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(x, y, textString);$(13_10)"
/// @description Execute Code
textString = ("Plays: " + string(GameManager.playsLeft));

draw_self(); 

draw_set_font(Jersey_24P); 
draw_set_color(c_white); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, textString);