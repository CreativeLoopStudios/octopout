var ButtonText = argument0;

// Find the corners of our box
var BoxTop = CurrentY;
var TextTop = BoxTop;
var BoxBottom = BoxTop + string_height(ButtonText);
var HalfTextWidth = string_width(ButtonText) / 2;

var BoxLeft = x - HalfTextWidth;
var BoxRight = x + HalfTextWidth;

draw_set_colour(c_white);

CurrentY = TextTop;
DrawTextAndUpdateCurrentY(ButtonText, BoxLeft);

CurrentY = CurrentY + (Margin * 3);
