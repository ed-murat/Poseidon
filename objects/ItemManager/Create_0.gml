enum item {
	CANNONBALL = 0,
	WOOD_PLANK = 1,
	
	CHEST_T1 = 10,
	CHEST_T2 = 11,
	CHEST_T3 = 12,
	CHEST_T4 = 13,
	CHEST_T5 = 14,
	CHEST_T6 = 15,
	CHEST_T7 = 16,
	CHEST_T8 = 17,
	CHEST_T9 = 18,
	CHEST_T10 = 19
}

itemList = ds_list_create();
ds_list_add(itemList,item.CANNONBALL);
ds_list_add(itemList,item.WOOD_PLANK);
ds_list_add(itemList,item.CHEST_T1);
ds_list_add(itemList,item.CHEST_T2);
ds_list_add(itemList,item.CHEST_T3);
ds_list_add(itemList,item.CHEST_T4);
ds_list_add(itemList,item.CHEST_T5);
ds_list_add(itemList,item.CHEST_T6);
ds_list_add(itemList,item.CHEST_T7);
ds_list_add(itemList,item.CHEST_T8);
ds_list_add(itemList,item.CHEST_T9);
ds_list_add(itemList,item.CHEST_T10);

itemName = ds_map_create();
ds_map_add(itemName,item.CANNONBALL,"Cannonball");
ds_map_add(itemName,item.WOOD_PLANK,"Wooden Plank");
ds_map_add(itemName,item.CHEST_T1,"Poor chest");
ds_map_add(itemName,item.CHEST_T2,"Common chest");
ds_map_add(itemName,item.CHEST_T3,"Uncommon chest");
ds_map_add(itemName,item.CHEST_T4,"Sigular chest");
ds_map_add(itemName,item.CHEST_T5,"Rare chest");
ds_map_add(itemName,item.CHEST_T6,"Extraordinary chest");
ds_map_add(itemName,item.CHEST_T7,"Epic chest");
ds_map_add(itemName,item.CHEST_T8,"Mythic chest");
ds_map_add(itemName,item.CHEST_T9,"Legendary chest");
ds_map_add(itemName,item.CHEST_T10,"Golden chest");

itemSprite = ds_map_create();
ds_map_add(itemSprite,item.CANNONBALL,sprIconCannonball);
ds_map_add(itemSprite,item.WOOD_PLANK,sprIconWoodPlank);
ds_map_add(itemSprite,item.CHEST_T1,sprChestGrey);
ds_map_add(itemSprite,item.CHEST_T2,sprChestLightGreen);
ds_map_add(itemSprite,item.CHEST_T3,sprChestDarkGreen);
ds_map_add(itemSprite,item.CHEST_T4,sprChestLightBlue);
ds_map_add(itemSprite,item.CHEST_T5,sprChestDarkBlue);
ds_map_add(itemSprite,item.CHEST_T6,sprChestLightPurple);
ds_map_add(itemSprite,item.CHEST_T7,sprChestDarkPurple);
ds_map_add(itemSprite,item.CHEST_T8,sprChestRed);
ds_map_add(itemSprite,item.CHEST_T9,sprChestOrange);
ds_map_add(itemSprite,item.CHEST_T10,sprChestGold);

itemSelectionnable = ds_list_create();
ds_list_add(itemSelectionnable,item.CANNONBALL);
ds_list_add(itemSelectionnable,item.WOOD_PLANK);