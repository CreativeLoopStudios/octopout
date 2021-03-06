var ButtonText = argument0;
var Result = false;

// Find the corners of our box
var BoxTop = CurrentY;
var TextTop = BoxTop + Margin;
var BoxBottom = BoxTop + Margin + string_height(ButtonText) + Margin;
var HalfTextWidth = string_width(ButtonText) / 2;

var TextHorizontalMargin = (Margin * 2);
var BoxLeft = x - HalfTextWidth - TextHorizontalMargin;
var BoxRight = x + HalfTextWidth + TextHorizontalMargin;

draw_set_colour(make_colour_hsv(0, 200, 128));

// See if the cursor is hovering over it
if (device_mouse_x_to_gui(0) > BoxLeft
    and device_mouse_x_to_gui(0) < BoxRight
    and device_mouse_y_to_gui(0) > BoxTop
    and device_mouse_y_to_gui(0) < BoxBottom) {
    draw_set_alpha(1);
    
    if(mouse_check_button_pressed(mb_left)) {
        PlaySoundEffect(noone, aMenuSelect, 1, 1);
        Result = true;
    }
} else {
    draw_set_alpha(0.5);
}

draw_rectangle(BoxLeft, BoxTop, BoxRight, BoxBottom, false);
draw_set_alpha(1);

draw_set_colour(c_white);

CurrentY = TextTop;
DrawTextAndUpdateCurrentY(ButtonText, BoxLeft + TextHorizontalMargin);

CurrentY = CurrentY + (Margin * 3);

return Result;
