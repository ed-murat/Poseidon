//Sprite
var life = PlayerManager.shipLife;
var maxLife = PlayerManager.shipMaxLife;
shipSprite = [sprShipWhite0,sprShipWhite1,sprShipWhite2,sprShipWhite3];

if(life == maxLife) {
	sprite_index = shipSprite[0];
}
else if(maxLife>life and life>=(maxLife/2)) {
	sprite_index = shipSprite[1];
}
else if((maxLife/2)>life and life>0) {
	sprite_index = shipSprite[2];
}
else if(life == 0) {
	sprite_index = shipSprite[3];
}
image_angle = PlayerManager.shipDirection + 90;

//Position
   //Wind
var windSpeed = WindManager.windSpeed;
var windDirection = WindManager.windDirection;
var angleDiff = (PlayerManager.shipDirection - WindManager.windDirection) % 360;
   //Sail
var sail = PlayerManager.shipSail;
   //Speed
var baseSpeed = PlayerManager.shipSpeed;
var windEffect = cos(degtorad(angleDiff)) * windSpeed;
var totalSpeed = (baseSpeed + windEffect) * sail;

x += cos(degtorad(PlayerManager.shipDirection)) * totalSpeed;
y -= sin(degtorad(PlayerManager.shipDirection)) * totalSpeed;