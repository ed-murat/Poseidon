PlayerManager.shipLife -= shotDamage;
if(PlayerManager.shipLife <= 0) {
	PlayerManager.shipLife = 0;
}

instance_destroy();
