if(!instance_exists(Ship)) {
	exit;
}

var shipX = Ship.x;
var shipY = Ship.y;

if(changeRegionCooldown > 0) {
	changeRegionCooldown -= 1/room_speed;
	if(changeRegionCooldown <= 0) {
		changeRegionCooldown = 0;
	}
}
var cooldownUp = (changeRegionCooldown<=0);

if(shipX < borderSize and regionX != 0 and cooldownUp) {
	onLeftBorder = 1;
}
else {
	onLeftBorder = 0;
}
	
if(shipX > room_width-borderSize and regionX != worldWidth-1 and cooldownUp) {
	onRightBorder = 1;
}
else {
	onRightBorder = 0;
}
	
if(shipY < borderSize and regionY != 0 and cooldownUp) {
	onTopBorder = 1;
}
else {
	onTopBorder = 0;
}
	
if(shipY > room_height-borderSize and regionY != worldHeight-1 and cooldownUp) {
	onBottomBorder = 1;
}
else {
	onBottomBorder = 0;
}


if(gamepad_button_check_pressed(0,gp_face1)) {
	if(onTopBorder) {
		regionY--;
		var nextRoom = ds_grid_get(worldGrid,regionX,regionY);
		shipY = room_height - shipY;
		room_goto(nextRoom);
	}
	if(onBottomBorder) {
		regionY++;
		var nextRoom = ds_grid_get(worldGrid,regionX,regionY);
		shipY = room_height - shipY;
		room_goto(nextRoom);
	}
	if(onLeftBorder) {
		regionX--;
		var nextRoom = ds_grid_get(worldGrid,regionX,regionY);
		shipX = room_width - shipX;
		room_goto(nextRoom);
	}
	if(onRightBorder) {
		regionX++;
		var nextRoom = ds_grid_get(worldGrid,regionX,regionY);
		shipX = room_width - shipX;
		room_goto(nextRoom);
	}
	changeRegionCooldown = changeRegionMaxCooldown;
}

Ship.x = shipX;
Ship.y = shipY;