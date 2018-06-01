var width = window_get_width();
var height = window_get_height();

drawShipMenuBar(shipMenu.INVENTORY);

var count = 0;
for(var h=-2 ; h<=2 ; h++) {
	for(var w=-2 ; w<=2 ; w++) {
		var drawX = width/2 + (100 * w);
		var drawY = height/2 + (100 * h);
		draw_sprite(sprItemSelectionRound,0,drawX,drawY);
		
		var itemX = ds_list_find_value(InventoryManager.holdInventory,count);
		if(itemX != noone) {
			var sprite = ds_map_find_value(ItemManager.itemSprite,itemX);
			draw_sprite(sprite,0,drawX,drawY);
		}
		
		count++;
		if(count >= PlayerManager.inventoryCapacity) {
			break;
		}
	}
	if(count >= PlayerManager.inventoryCapacity) {
		break;
	}
}