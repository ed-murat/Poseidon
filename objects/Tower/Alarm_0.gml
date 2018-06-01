var directionShip = point_direction(x,y,Ship.x,Ship.y);
var newCannonball = instance_create_layer(x+cos(degtorad(directionShip))*50,y-sin(degtorad(directionShip))*50,"Projectile",Cannonball);
newCannonball.shotDirection = directionShip;
newCannonball.shotDamage = 100;
newCannonball.shotRange = 2000;

alarm_set(0,fireRate*room_speed);
