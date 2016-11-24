var TextToDraw = argument0;
var X = argument1;

draw_text(X, CurrentY, TextToDraw);
CurrentY = CurrentY + string_height(TextToDraw) + Margin;
