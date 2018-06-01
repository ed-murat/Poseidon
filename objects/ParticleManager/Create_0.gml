particleSystem = noone;

cannonballTrail = part_type_create();
part_type_shape(cannonballTrail,pt_shape_cloud);
part_type_size(cannonballTrail,0,0.5,-0.05,0);
part_type_scale(cannonballTrail,0.5,0.5);
part_type_color1(cannonballTrail,c_white);
part_type_alpha1(cannonballTrail,1);
part_type_direction(cannonballTrail,0,360,0,0);
part_type_orientation(cannonballTrail,0,360,0,0,0);
part_type_speed(cannonballTrail,0,0,0,0);
part_type_life(cannonballTrail,10,10);

waterRing = part_type_create();
part_type_shape(waterRing,pt_shape_ring);
part_type_size(waterRing,0,0.5,0.05,0);
part_type_scale(waterRing,1,1);
part_type_color1(waterRing,c_white);
part_type_alpha3(waterRing,0.5,1,0);
part_type_direction(waterRing,0,360,0,0);
part_type_orientation(waterRing,0,360,0,0,0);
part_type_speed(waterRing,0,0,0,0);
part_type_life(waterRing,15,15);

windLine = part_type_create();
part_type_shape(windLine,pt_shape_line);
part_type_size(windLine,1,1,0,0);
part_type_scale(windLine,2.5,0.5);
part_type_color1(windLine,c_white);
part_type_alpha3(windLine,0,0.5,0);
part_type_direction(windLine,0,360,0,0);
part_type_orientation(windLine,0,360,0,0,0);
part_type_speed(windLine,20,20,0,0);
part_type_life(windLine,40,40);

windEmitter = noone;
