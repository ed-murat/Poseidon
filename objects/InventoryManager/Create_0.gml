holdInventory = ds_list_create();
for(var i=0 ; i<PlayerManager.inventoryCapacity ; i++) {
	ds_list_add(holdInventory,noone);
}
ds_list_set(holdInventory,0,item.CHEST_T3);
ds_list_set(holdInventory,1,item.CHEST_T2);
ds_list_set(holdInventory,2,item.CHEST_T7);

ressourceInventory = ds_map_create();
for(var i=0 ; i<ds_list_size(ItemManager.itemList) ; i++) {
	var itemX = ds_list_find_value(ItemManager.itemList,i);
	ds_map_add(ressourceInventory,itemX,0);
}
ds_map_set(ressourceInventory,item.CANNONBALL,10);
ds_map_set(ressourceInventory,item.WOOD_PLANK,10);

itemSelection = ds_list_find_value(ItemManager.itemSelectionnable,0);