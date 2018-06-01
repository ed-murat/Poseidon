var stickLeftAxisVerti = gamepad_axis_value(0,gp_axislv);

if(listenNextInput and stickLeftAxisVerti<-0.2) {
	titleSelection--;
	if(titleSelection < 0) {
		titleSelection = array_length_1d(titleSelectionList)-1;
	}
	listenNextInput = 0;
	alarm_set(0,0.5*room_speed);
}
if(listenNextInput and stickLeftAxisVerti>0.2) {
	titleSelection++;
	if(titleSelection >= array_length_1d(titleSelectionList)) {
		titleSelection = 0;
	}
	listenNextInput = 0;
	alarm_set(0,0.5*room_speed);
}
	
//Reset listening timer
if(-0.2 < stickLeftAxisVerti and stickLeftAxisVerti < 0.2) {
	listenNextInput = 1;
	alarm_set(0,-1);
}

//Selection choosen
if(gamepad_button_check_pressed(0,gp_face1)) {
	switch(titleSelection) {
		case 0:
			room_goto(roomLoading);
			break;
				
		case 1:
			game_end();
			break;
	}
}