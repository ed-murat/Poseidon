var width = window_get_width();
var height = window_get_height();

switch(room) {
	
	case roomLoading:
		draw_set_color(c_black);
		draw_rectangle(97,height-43,width-97,height-27,0);
		draw_set_color(c_white);
		var maxTime = 2*room_speed
		var ratio = (maxTime-alarm_get(0)) / maxTime;
		draw_rectangle(100,height-40,100+(ratio*(width-200)),height-30,0);
	
}