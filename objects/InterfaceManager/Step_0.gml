if(gamepad_button_check_pressed(0,gp_face4)) {
	showShipMenu = !showShipMenu;
}

if(showShipMenu) {
	if(gamepad_button_check_pressed(0,gp_shoulderl)) {
		shipMenuIndex--;
		if(shipMenuIndex < 0) { shipMenuIndex = 0; }
	}
	if(gamepad_button_check_pressed(0,gp_shoulderr)) {
		shipMenuIndex++;
		if(shipMenuIndex > array_length_1d(shipMenuListOrder)-1) { shipMenuIndex = array_length_1d(shipMenuListOrder)-1; }
	}
}

if(keyboard_check_pressed(vk_f3)) {
	showDebugInfo = !showDebugInfo;
}

if(showFlooding > 0) {
	showFlooding -= 0.05;
	if(showFlooding <= 0) {
		showFlooding = 0;
	}
}

if(showSail > 0) {
	showSail -= 0.05;
	if(showSail <= 0) {
		showSail = 0;
	}
}