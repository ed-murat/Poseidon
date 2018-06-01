enum shipMenu {
	MAP,
	GENERAL,
	INVENTORY,
	QUEST,
	UPGRADE,
	ALLIANCE,
	CHALLENGE
}

showShipMenu = 0;
shipMenuListOrder = [shipMenu.MAP,shipMenu.GENERAL,shipMenu.INVENTORY];
shipMenuListName = ["Map","General","Inventory"];
shipMenuListIcon = [sprIconMap,sprIconWheel,sprIconInventory];
shipMenuIndex = floor(array_length_1d(shipMenuListOrder)/2);

showRepairingTimer = 0;
showLoadingTimer = 0;

showFlooding = 0;
showSail = 0;

showDebugInfo = 0;