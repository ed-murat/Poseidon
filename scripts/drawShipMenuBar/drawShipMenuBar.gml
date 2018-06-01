var currentMenu = argument0;

var width = window_get_width();
var height = window_get_height();

var menuCount = array_length_1d(InterfaceManager.shipMenuListOrder)
for(var i=0 ; i<menuCount ; i++) {
	if(currentMenu == shipMenuListOrder[i]) {
		//draw_set_color(c_white);
		//draw_set_font(ShipMenuTitle);
		//draw_set_halign(fa_center);
		//draw_set_valign(fa_center);
		//var menuName = InterfaceManager.shipMenuListName[i];
		//draw_text((i+1)*width/(menuCount+1),40,string(menuName));
		var sprite = InterfaceManager.shipMenuListIcon[i];
		draw_sprite_ext(sprite,0,(i+1)*width/(menuCount+1),40,1.2,1.2,0,c_white,1);
	}
	else {
		//draw_set_color(c_gray);
		//draw_set_font(ShipMenuTitleNext);
		//draw_set_halign(fa_center);
		//draw_set_valign(fa_center);
		//var menuName = InterfaceManager.shipMenuListName[i];
		//draw_text((i+1)*width/(menuCount+1),40,string(menuName));
		var sprite = InterfaceManager.shipMenuListIcon[i];
		draw_sprite_ext(sprite,0,(i+1)*width/(menuCount+1),40,0.8,0.8,0,c_ltgray,1);
	}
}