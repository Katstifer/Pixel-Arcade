/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19C241CF
/// @DnDArgument : "code" "draw_self();$(13_10)$(13_10)draw_set_color(c_white);$(13_10)$(13_10)switch(collider_shape)$(13_10){$(13_10)    case "circle":$(13_10)        draw_circle($(13_10)            x,$(13_10)            y,$(13_10)            collider_radius,$(13_10)            true$(13_10)        );$(13_10)    break;$(13_10)$(13_10)    default:$(13_10)        draw_rectangle($(13_10)            x - collider_width,$(13_10)            y - collider_height,$(13_10)            x + collider_width,$(13_10)            y + collider_height,$(13_10)            true$(13_10)        );$(13_10)	$(13_10)}$(13_10)$(13_10)"
draw_self();

draw_set_color(c_white);

switch(collider_shape)
{
    case "circle":
        draw_circle(
            x,
            y,
            collider_radius,
            true
        );
    break;

    default:
        draw_rectangle(
            x - collider_width,
            y - collider_height,
            x + collider_width,
            y + collider_height,
            true
        );
	
}