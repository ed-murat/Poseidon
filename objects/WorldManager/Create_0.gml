worldWidth = 15;
worldHeight = 15;

regionX = floor(worldWidth/2);
regionY = floor(worldHeight/2);

worldGrid = ds_grid_create(worldWidth,worldHeight);
worldMap = ds_grid_create(worldWidth,worldHeight);

regionSea = roomSea;
regionPreludeIsland = roomPreludeIsland;

for(var h=0 ; h<worldHeight ; h++) {
	for(var w=0 ; w<worldWidth ; w++) {
		if(w==floor(worldHeight/2) and h==floor(worldWidth/2)) {
			ds_grid_add(worldGrid,w,h,regionPreludeIsland);
			ds_grid_add(worldMap,w,h,MAPTILE_PRELUDE_ISLAND);
		}
		else {
			ds_grid_add(worldGrid,w,h,regionSea);
			ds_grid_add(worldMap,w,h,MAPTILE_SEA);
		}
	}
}

//Border
borderSize = 200;

onTopBorder = 0;
onLeftBorder = 0;
onBottomBorder = 0;
onRightBorder = 0;

changeRegionCooldown = 0;
changeRegionMaxCooldown = 5;