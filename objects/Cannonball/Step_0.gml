for(var i=0 ; i<shotSpeed ; i+=1) {
	x += cos(degtorad(shotDirection));
	y -= sin(degtorad(shotDirection));
	part_particles_create(ParticleManager.particleSystem,x,y,ParticleManager.cannonballTrail,1);
	
	shotDistance++;
	
	if(shotDistance >= shotRange) {
		part_particles_create(ParticleManager.particleSystem,x,y,ParticleManager.waterRing,1);
		instance_destroy();
	}
}
