var width = window_get_width();
var height = window_get_height();

if(room==roomLoading) {
	exit;
}

if(PauseManager.gamePaused) {
	exit;
}

//Ship menu screen
if(showShipMenu) {
	draw_set_color(c_black);
	draw_set_alpha(0.7);
	draw_rectangle(-1,0,width,height,0);
	draw_set_alpha(1);
	
	switch(shipMenuListOrder[shipMenuIndex]) {
		case shipMenu.MAP:
			drawShipMenuMap();
			break;
		
		case shipMenu.GENERAL:
			drawShipMenuGeneral();
			break;
		
		case shipMenu.INVENTORY:
			drawShipMenuInventory();
			break;
	}
}
else {
	if(showRepairingTimer) {
		draw_sprite_ext(sprTimerWoodRepair,0,width/2,3*height/4,1,1,0,c_white,showRepairingTimer);
		draw_circular_bar(width/2,3*height/4,PlayerManager.repairingTime,PlayerManager.repairingMaxTime,c_white,26,showRepairingTimer,5);
	}
	if(showLoadingTimer) {
		draw_sprite_ext(sprTimerCannonLoad,0,width/2,3*height/4,1,1,0,c_white,showLoadingTimer);
		draw_circular_bar(width/2,3*height/4,PlayerManager.loadingTime,PlayerManager.loadingMaxTime,c_white,26,showLoadingTimer,5);
	}
	
	
	var spriteWidth = sprite_get_width(sprItemSelectionRound);
	var spriteHeight = sprite_get_height(sprItemSelectionRound);
	draw_sprite(sprItemSelectionRound,0,30+spriteWidth/2,height-(20+spriteHeight/2));
	
	var icon = ds_map_find_value(ItemManager.itemSprite,InventoryManager.itemSelection);
	draw_sprite(icon,0,30+spriteWidth/2,height-(20+spriteHeight/2));
	
	draw_sprite(sprItemCountRound,0,30+spriteWidth/2,height-(20+spriteHeight/2));
	
	var itemCount = ds_map_find_value(InventoryManager.ressourceInventory,InventoryManager.itemSelection);
	draw_set_font(Berlin10);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	if(itemCount<=0) { draw_set_color(c_red); }
	else { draw_set_color(c_white); }
	draw_text(30+(spriteWidth/2)+20,height-(20+(spriteHeight/2))+20,string(itemCount));
	
	draw_sprite(sprDoubleGauge,0,30+spriteWidth/2,height-(20+spriteHeight/2));
	if(showFlooding > 0) {
		var scale = PlayerManager.shipFlood / PlayerManager.shipMaxFlood;
		draw_sprite_ext(sprFloodGauge,0,30+(spriteWidth/2)-14,height-(20+spriteHeight/2)-36,1,scale,0,c_white,showFlooding);
	}
	if(showSail > 0) {
		var scale = PlayerManager.shipSail;
		draw_sprite_ext(sprSailGauge,0,30+(spriteWidth/2)+3,height-(20+spriteHeight/2)-36,1,scale,0,c_white,showSail);
	}
}

//Debug information screen
if(showDebugInfo) {
	var offset = 0;
	draw_debug_overlay_text(20,20+(offset++*23),"Region : "+room_get_name(room)+" ("+string(WorldManager.regionX)+" / "+string(WorldManager.regionY)+")");
	draw_debug_overlay_text(20,20+(offset++*23),"Wind : "+string(WindManager.windCardinalDirection)+" ("+string(WindManager.windDirection)+"°)");
	draw_debug_overlay_text(20,20+(offset++*23),"X : "+string(Ship.x)+"  |  Y : "+string(Ship.y));
	draw_debug_overlay_text(20,20+(offset++*23),"Angle : "+string(PlayerManager.shipDirection)+"°");
	draw_debug_overlay_text(20,20+(offset++*23),"Zoom : "+string(PlayerManager.watchHeight)+"   ("+string(CameraManager.scope)+")");
	draw_debug_overlay_text(20,20+(offset++*23),"Sail : "+string(floor(PlayerManager.shipSail*100))+"%");
	draw_debug_overlay_text(20,20+(offset++*23),"Speed : "+string((PlayerManager.shipSpeed + (cos(degtorad((PlayerManager.shipDirection - WindManager.windDirection) % 360)) * WindManager.windSpeed)) * PlayerManager.shipSail));
	draw_debug_overlay_text(20,20+(offset++*23),"Health : "+string(PlayerManager.shipLife)+"/"+string(PlayerManager.shipMaxLife));
	draw_debug_overlay_text(20,20+(offset++*23),"Flood : "+string(PlayerManager.shipFlood)+"/"+string(PlayerManager.shipMaxFlood));
	draw_debug_overlay_text(20,20+(offset++*23),"Level : "+string(PlayerManager.xpLevel));
	draw_debug_overlay_text(20,20+(offset++*23),"Experience : "+string(PlayerManager.xpPoint)+"/"+string(ds_map_find_value(PlayerManager.xpTable,PlayerManager.xpLevel)));
}