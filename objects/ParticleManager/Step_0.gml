if(!part_system_exists(particleSystem)) {
	particleSystem = part_system_create_layer("Particle",true);
}

var windDirection = WindManager.windDirection;
part_type_direction(windLine,windDirection,windDirection,0,0);
part_type_orientation(windLine,windDirection,windDirection,0,0,0);

if(instance_exists(Ship)) {
	if(!part_emitter_exists(particleSystem,windEmitter)) {	
		windEmitter = part_emitter_create(particleSystem);
	}
	part_emitter_region(particleSystem,windEmitter,0,room_width,0,room_height,ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(particleSystem,windEmitter,windLine,10);
}