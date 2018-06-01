if(scope < PlayerManager.watchHeight) {
	scope += (PlayerManager.watchHeight - scope) * 0.025;
	if(scope >= PlayerManager.watchHeight) {
		scope = PlayerManager.watchHeight;
	}
}

if(scope > PlayerManager.watchHeight) {
	scope -= (scope - PlayerManager.watchHeight) * 0.025;
	if(scope <= PlayerManager.watchHeight) {
		scope = PlayerManager.watchHeight;
	}
}

camera_set_view_size(view_camera[0],window_get_width()*scope,window_get_height()*scope);