/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77F47139
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//draw_sprite_stretched(sprite_uiPinkButton, sprite_index, x - (targetWidth/2), y - (targetHeight/2), targetWidth, targetHeight);$(13_10)$(13_10)draw_self();$(13_10)$(13_10)draw_set_font(Jersey_24P); $(13_10)draw_set_color(c_white); $(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(x, y, "Done");$(13_10)$(13_10)$(13_10)/*$(13_10)draw_rectangle($(13_10)x - (targetWidth/2),$(13_10)y - (targetHeight/2),$(13_10)x + (targetWidth/2), $(13_10)y + (targetHeight/2),$(13_10)true$(13_10)); */"
/// @description Execute Code
//draw_sprite_stretched(sprite_uiPinkButton, sprite_index, x - (targetWidth/2), y - (targetHeight/2), targetWidth, targetHeight);

draw_self();

draw_set_font(Jersey_24P); 
draw_set_color(c_white); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, "Done");


/*
draw_rectangle(
x - (targetWidth/2),
y - (targetHeight/2),
x + (targetWidth/2), 
y + (targetHeight/2),
true
); *//**/