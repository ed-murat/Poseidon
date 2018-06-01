var width = window_get_width();
var height = window_get_height();

if(gamePaused) {
	draw_set_color(c_black);
	draw_set_alpha(0.3);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	draw_set_color(c_white);
	draw_set_font(PauseMenuTitle);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(width/2,height/6,"Pause");
	
	draw_set_color(c_ltgray);
	if(pauseSelection == 0) { 
		draw_set_color(c_white);
		draw_sprite_ext(sprSelectionArrow,0,width/2-100,height/2-40,1,1,0,c_white,1);
		draw_sprite_ext(sprSelectionArrow,0,width/2+100,height/2-40,1,1,180,c_white,1);
	}
	draw_set_font(PauseMenuSelection);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(width/2,height/2-40,pauseSelectionList[0]);
	
	draw_set_color(c_ltgray);
	if(pauseSelection == 1) { 
		draw_set_color(c_white);
		draw_sprite_ext(sprSelectionArrow,0,width/2-100,height/2+40,1,1,0,c_white,1);
		draw_sprite_ext(sprSelectionArrow,0,width/2+100,height/2+40,1,1,180,c_white,1);
	}
	draw_set_font(PauseMenuSelection);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(width/2,height/2+40,pauseSelectionList[1]);
}