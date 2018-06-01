#region Direction

if(gamepad_button_check(0,gp_shoulderlb)) {
	shipDirection += shipManiability;
}
if(gamepad_button_check(0,gp_shoulderrb)) {
	shipDirection -= shipManiability;
}
shipDirection = shipDirection % 360;

#endregion

#region Experience

xpPoint += 1;
var xpNeeded = ds_map_find_value(xpTable,xpLevel);
if(xpPoint >= xpNeeded) {
	xpPoint -= xpNeeded;
	xpLevel++;
}

#endregion

#region Life & Flood 

var missingLife = shipMaxLife - shipLife;
var hullHole = ceil(missingLife/100);

if(hullHole > 0) {
	shipFlood += (floodIn/room_speed) * hullHole;
	if(shipFlood >= shipMaxFlood) {
		shipFlood = shipMaxFlood;
	}
	InterfaceManager.showFlooding = 1;
}
else {
	if(shipFlood > 0) {
		shipFlood -= (floodOut/room_speed);
		if(shipFlood <= 0) {
			shipFlood = 0;
		}
		InterfaceManager.showFlooding = 1;
	}
}

#endregion

#region Sail

if(shipSailLock) {
	//Unlock sail
	if(gamepad_button_check_pressed(0,gp_face2)) {
		shipSailLock = 0;
		shipSail += 15*shipSailDeploy;
		InterfaceManager.showSail = 1;
	}
}
else {
	//Fold sail
	if(gamepad_button_check(0,gp_face2)) {
		shipSail -= shipSailDeploy;
		if(shipSail <= 0) {
			shipSail = 0;
			shipSailLock = 1;
		}
		InterfaceManager.showSail = 1;
	}
	//Unfold sail
	else {
		if(shipSail < 1) { 
			shipSail += shipSailDeploy; 
			if(shipSail >= 1) {
				shipSail = 1;
			}
		}
		InterfaceManager.showSail = 1;
	}
}

#endregion

#region Cannon firing

if(cannonLoad) {
	if(gamepad_button_check_pressed(0,gp_shoulderl)) {
		var spriteWidth = sprite_get_width(Ship.sprite_index) * 1.5;
		var creationX = Ship.x + cos(degtorad(shipDirection+90)) * spriteWidth;
		var creationY = Ship.y - sin(degtorad(shipDirection+90)) * spriteWidth;
		var newCannonball = instance_create_layer(creationX,creationY,"Projectile",Cannonball);
		newCannonball.shotDirection = shipDirection + 90;
		newCannonball.shotDamage = cannonballDamage;
		newCannonball.shotRange = cannonballRange;
		newCannonball.shotSpeed = cannonballSpeed;
		cannonLoad = 0;
	}
	else if(gamepad_button_check_pressed(0,gp_shoulderr)) {
		var spriteWidth = sprite_get_width(Ship.sprite_index) * 1.5;
		var creationX = Ship.x + cos(degtorad(shipDirection-90)) * spriteWidth;
		var creationY = Ship.y - sin(degtorad(shipDirection-90)) * spriteWidth;
		var newCannonball = instance_create_layer(creationX,creationY,"Projectile",Cannonball);
		newCannonball.shotDirection = shipDirection - 90;
		newCannonball.shotDamage = cannonballDamage;
		newCannonball.shotRange = cannonballRange;
		newCannonball.shotSpeed = cannonballSpeed;
		cannonLoad = 0;
	}
}

#endregion

#region Watch tower

if(gamepad_button_check_pressed(0,gp_padu)) {
	watchHeight += 0.5;
	if(watchHeight >= watchMaxHeight) {
		watchHeight = watchMaxHeight;
	}
}

if(gamepad_button_check_pressed(0,gp_padd)) {
	watchHeight -= 0.5;
	if(watchHeight <= watchMinHeight) {
		watchHeight = watchMinHeight;
	}
}

#endregion

#region Action with selected item

var itemSelection = InventoryManager.itemSelection;

if(gamepad_button_check(0,gp_face3)) {
	switch(itemSelection) {
		
		case item.CANNONBALL:
			var itemCount = ds_map_find_value(InventoryManager.ressourceInventory,item.CANNONBALL);
			if(!cannonLoad and itemCount>0) {
				loadingTime += 1/room_speed;
				if(loadingTime >= loadingMaxTime) {
					cannonLoad = 1;
					loadingTime = 0;
					InterfaceManager.showLoadingTimer = 0;
					ds_map_set(InventoryManager.ressourceInventory,item.CANNONBALL,itemCount-1);
				}
				InterfaceManager.showLoadingTimer = 1;
			}
			else {
				loadingTime = 0;
				InterfaceManager.showLoadingTimer = 0;
			}
			break;
			
		case item.WOOD_PLANK:
			var itemCount = ds_map_find_value(InventoryManager.ressourceInventory,item.WOOD_PLANK);
			if(shipLife<shipMaxLife and itemCount>0) {
				repairingTime += 1/room_speed;
				if(repairingTime >= repairingMaxTime) {
					shipLife += shipRepair;
					repairingTime = 0;
					InterfaceManager.showRepairingTimer = 0;
					ds_map_set(InventoryManager.ressourceInventory,item.WOOD_PLANK,itemCount-1);
				}
				InterfaceManager.showRepairingTimer = 1;
			}
			else {
				repairingTime = 0;
				InterfaceManager.showRepairingTimer = 0;
			}
			break;
	}
}
else {
	repairingTime = 0;
	InterfaceManager.showRepairingTimer = 0;
	
	loadingTime = 0;
	InterfaceManager.showLoadingTimer = 0;
}

#endregion