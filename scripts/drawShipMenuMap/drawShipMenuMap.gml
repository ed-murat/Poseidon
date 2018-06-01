var width = window_get_width();
var height = window_get_height();

drawShipMenuBar(shipMenu.MAP);

var mapGrid = WorldManager.worldMap;
var worldWidth = WorldManager.worldWidth;
var worldHeight = WorldManager.worldHeight;
for(var h=0 ; h<worldHeight ; h++) {
	for(var w=0 ; w<worldWidth ; w++) {
		var displayW = (width/2) + (40 * (w-floor(worldWidth/2)));
		var displayH = (height/2) + (40 * (h-floor(worldHeight/2)));
		var maptile = ds_grid_get(mapGrid,w,h);
			
		var maptileSprite;
		var maptileName;
		switch(maptile) {
			case MAPTILE_SEA:
				maptileSprite = sprMapSea;
				maptileName = "Sea";
				break;
				
			case MAPTILE_PRELUDE_ISLAND:
				maptileSprite = sprMapSea;
				maptileName = "Prelude Island";
				break;
		}
			
		draw_sprite(maptileSprite,0,displayW,displayH);
		if(WorldManager.regionX==w and WorldManager.regionY==h) {
			draw_sprite(sprMapSelection,0,displayW,displayH);
			
			draw_set_color(c_white);
			draw_set_font(ShipMenuMapRegionName);
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			draw_text(width/2,height-50,maptileName+" ("+string(w+1)+", "+string(h+1)+")");
		}
	}
}