var width = window_get_width();
var height = window_get_height();


draw_set_color(c_ltgray);
if(titleSelection == 0) { 
	draw_set_color(c_white);
	draw_sprite_ext(sprSelectionArrow,0,width/2-100,height/2-60,1,1,0,c_white,1);
	draw_sprite_ext(sprSelectionArrow,0,width/2+100,height/2-60,1,1,180,c_white,1);
}
draw_set_font(TitleMenuSelection);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(width/2,height/2-60,titleSelectionList[0]);


draw_set_color(c_ltgray);
if(titleSelection == 1) { 
	draw_set_color(c_white);
	draw_sprite_ext(sprSelectionArrow,0,width/2-100,height/2+60,1,1,0,c_white,1);
	draw_sprite_ext(sprSelectionArrow,0,width/2+100,height/2+60,1,1,180,c_white,1);
}
draw_set_font(TitleMenuSelection);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(width/2,height/2+60,titleSelectionList[1]);