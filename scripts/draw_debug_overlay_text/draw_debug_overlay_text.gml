/// draw_debug_overlay_text(x,y,text);
/// @param x
/// @param y
/// @param text

var posX = argument0;
var posY = argument1;
var text = string(argument2);

var textLenght = string_length(text);

draw_set_color(c_black);
draw_set_alpha(0.3);
draw_rectangle(posX-11,posY-11,posX+11+(9*textLenght),posY+11,0);
draw_set_alpha(1);

draw_set_font(DebugOverlayFont);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(posX,posY,text);