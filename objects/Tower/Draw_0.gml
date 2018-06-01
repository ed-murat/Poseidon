draw_self();

var directionShip = point_direction(x,y,Ship.x,Ship.y);
draw_sprite_ext(sprMobileCannon,0,x,y,1,1,directionShip,c_white,1);
