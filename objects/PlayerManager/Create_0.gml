//Movement
shipSpeed = 6;
shipDirection = 270;
shipManiability = 1;

//Sail
shipSail = 1;
shipSailDeploy = 0.002;
shipSailLock = 0;

//Flood
shipFlood = 0;			//Quantity of water in the boat
shipMaxFlood = 1000;	//Maximum of water that the boat can support, over this value, the boat flows
floodIn = 3;			//Quantity of water that goes in per second (multiplied by missing HP%100)
floodOut = 5;			//Quantity of water that goes out per second

//Life
shipLife = 1000;
shipMaxLife = 1000;
shipRepair = 50;
repairingTime = 0;
repairingMaxTime = 6;

//Cannon
cannonLoad = 0;
loadingTime = 0;
loadingMaxTime = 2;

//Cannonball
cannonballDamage = 60;
cannonballRange = 400;
cannonballSpeed = 40;

//Watch
watchMinHeight = 1;
watchHeight = 1;
watchMaxHeight = 1.5;

//Inventory
inventoryCapacity = 50;

//XP
xpLevel = 1;
xpPoint = 0;
xpBase = 1000;
xpScale = 1.01;
xpTable = ds_map_create();
ds_map_add(xpTable,1,xpBase);
for(var lvl=2 ; lvl<=1000 ; lvl++) {
	var nextXp = floor(ds_map_find_value(xpTable,lvl-1) * xpScale);
	ds_map_add(xpTable,lvl,nextXp);
}
upgradePoint = 0;

//Gold
gold = 0;