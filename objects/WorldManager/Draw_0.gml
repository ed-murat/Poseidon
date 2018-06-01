draw_set_alpha(0.6);
draw_set_color(c_black);

if(onTopBorder) {
	draw_rectangle(0,0,room_width,borderSize,0);
}
if(onBottomBorder) {
	draw_rectangle(0,room_height-borderSize,room_width,room_height,0);
}
if(onLeftBorder) {
	draw_rectangle(0,0,borderSize,room_height,0);
}
if(onRightBorder) {
	draw_rectangle(room_width-borderSize,0,room_width,room_height,0);
}

draw_set_alpha(1);