switch(room) {
	
	case roomLoading:
		if(alarm_get(0) <= 0) {
			alarm_set(0,2*room_speed);
		}
		break;
		
}