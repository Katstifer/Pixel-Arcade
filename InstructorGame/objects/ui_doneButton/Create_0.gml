/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30BE579C
/// @DnDArgument : "code" "depth = -100;$(13_10)$(13_10)if (targetWidth <= 0){$(13_10)	targetWidth = room_width/3;$(13_10)}$(13_10)$(13_10)if (targetHeight <= 0){$(13_10)	targetHeight = 64; $(13_10)}$(13_10)$(13_10)image_xscale = targetWidth / sprite_width; $(13_10)image_yscale = targetHeight / sprite_height; $(13_10)$(13_10)sprite_set_bbox(sprite_index,x - (targetWidth/2),$(13_10)y - (targetHeight/2),$(13_10)x + (targetWidth/2), $(13_10)y + (targetHeight/2)); $(13_10)$(13_10)show_debug_message(bbox_top); "
depth = -100;

if (targetWidth <= 0){
	targetWidth = room_width/3;
}

if (targetHeight <= 0){
	targetHeight = 64; 
}

image_xscale = targetWidth / sprite_width; 
image_yscale = targetHeight / sprite_height; 

sprite_set_bbox(sprite_index,x - (targetWidth/2),
y - (targetHeight/2),
x + (targetWidth/2), 
y + (targetHeight/2)); 

show_debug_message(bbox_top);