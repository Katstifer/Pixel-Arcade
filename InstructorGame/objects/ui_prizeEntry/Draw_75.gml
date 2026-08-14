/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5376E7B2
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_self();$(13_10)$(13_10)show_debug_message("Drawing prize entry instance");$(13_10)$(13_10)draw_set_font(Jersey_24P); $(13_10)draw_set_color(c_white); $(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(x, y + 64, name);$(13_10)$(13_10)draw_set_alpha(1.0); $(13_10)$(13_10)draw_sprite_ext($(13_10)sprite, $(13_10)variant,$(13_10)x,$(13_10)y,$(13_10)1.0,$(13_10)1.0,$(13_10)0,$(13_10)c_white, $(13_10)1$(13_10));$(13_10)$(13_10)draw_set_font(Jersey_24P); $(13_10)draw_set_color(c_white); $(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(x, y - 64, ("Owned: " + ${amount}));"
/// @description Execute Code
draw_self();

show_debug_message("Drawing prize entry instance");

draw_set_font(Jersey_24P); 
draw_set_color(c_white); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y + 64, name);

draw_set_alpha(1.0); 

draw_sprite_ext(
sprite, 
variant,
x,
y,
1.0,
1.0,
0,
c_white, 
1
);

draw_set_font(Jersey_24P); 
draw_set_color(c_white); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y - 64, ("Owned: " + string(amount)));