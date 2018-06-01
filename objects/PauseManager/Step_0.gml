//Switch
if(gamepad_button_check_pressed(0,gp_start)) {
	gamePaused = !gamePaused;
}

//Pausing instances
if(gamePaused) {
	instance_deactivate_all(true);
	//Exception
	//>>> No one
}
else {
	instance_activate_all();
}


if(gamePaused) {
	var stickLeftAxisVerti = gamepad_axis_value(0,gp_axislv);
	if(listenNextInput and stickLeftAxisVerti<-0.2) {
		pauseSelection--;
		if(pauseSelection < 0) {
			pauseSelection = array_length_1d(pauseSelectionList)-1;
		}
		listenNextInput = 0;
		alarm_set(0,0.5*room_speed);
	}
	if(listenNextInput and stickLeftAxisVerti>0.2) {
		pauseSelection++;
		if(pauseSelection >= array_length_1d(pauseSelectionList)) {
			pauseSelection = 0;
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
		switch(pauseSelection) {
			case 0:
				gamePaused = 0;
				break;
				
			case 1:
				room_goto(roomTitle);
				instance_destroy(Ship);
				instance_destroy(GameManager);
				instance_destroy(WorldManager);
				instance_destroy(RoomManager);
				instance_destroy(InterfaceManager);
				instance_destroy(PauseManager);
				instance_destroy(ParticleManager);
				instance_destroy(CameraManager);
				instance_destroy(MacroManager);
				instance_destroy(PlayerManager);
				instance_destroy(ItemManager);
				instance_destroy(InventoryManager);
				instance_destroy(WindManager);
				break;
		}
	}
}