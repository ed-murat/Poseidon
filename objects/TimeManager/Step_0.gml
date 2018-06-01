gameTime += 1/room_speed;

dayTime += 1/room_speed;
if(dayTime >= dayMaxTime) {
	dayTime = 0;
	day++;
	if(day > dayMax) {
		day = 1;
		month++;
		if(month >= monthMax) {
			month = 0;
			year++;
		}
	}
}