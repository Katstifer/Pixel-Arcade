/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 44D406D6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_set_alpha(0.4); $(13_10)draw_set_color(c_black); $(13_10)draw_rectangle($(13_10)0,$(13_10)0,$(13_10)390,$(13_10)697,$(13_10)false$(13_10));$(13_10)$(13_10)draw_set_alpha(1.0); $(13_10)$(13_10)draw_sprite_ext($(13_10)global.itemDatabase[$prizeName].sprite, $(13_10)variant,$(13_10)x,$(13_10)y,$(13_10)2.0,$(13_10)2.0,$(13_10)0,$(13_10)c_white, $(13_10)1$(13_10));$(13_10)$(13_10)draw_set_font(Jersey_36P); $(13_10)draw_set_color(c_white); $(13_10)draw_set_halign(fa_center); $(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(x, y + 192, string(global.itemDatabase[$prizeName].displayName));$(13_10)"
/// @description Execute Code
draw_set_alpha(0.4); 
draw_set_color(c_black); 
draw_rectangle(
0,
0,
390,
697,
false
);

draw_set_alpha(1.0); 

draw_sprite_ext(
global.itemDatabase[$prizeName].sprite, 
variant,
x,
y,
2.0,
2.0,
0,
c_white, 
1
);

draw_set_font(Jersey_36P); 
draw_set_color(c_white); 
draw_set_halign(fa_center); 
draw_set_valign(fa_middle);
draw_text(x, y + 192, string(global.itemDatabase[$prizeName].displayName));