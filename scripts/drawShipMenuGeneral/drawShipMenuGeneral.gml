var width = window_get_width();
var height = window_get_height();

drawShipMenuBar(shipMenu.GENERAL);

draw_sprite(sprIconStar,0,width/2-60,height/4);
draw_set_color(c_white);
draw_set_font(ShipMenuGeneralLevel);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(width/2,height/4,string(PlayerManager.xpLevel));

draw_sprite(sprIconGold,0,width/2-60,3*height/4-50);
draw_set_color(c_white);
draw_set_font(ShipMenuGeneralGold);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(width/2,3*height/4-50,string(PlayerManager.gold));

draw_sprite(sprIconUpgradePoint,0,width/2-60,3*height/4+50);
draw_set_color(c_white);
draw_set_font(ShipMenuGeneralUpgradePoint);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(width/2,3*height/4+50,string(PlayerManager.upgradePoint));

/* Draw clock
var dayText = string(TimeManager.day)+" "+string(TimeManager.monthList[TimeManager.month])+" "+string(TimeManager.yearList[TimeManager.year]);
var gameHour = floor(TimeManager.dayTime/60);
var gameMinute = floor(TimeManager.dayTime%60);
var minuteDir = 360 - (gameMinute/60)*360;
var hourDir = 360 - (((gameHour%12)*60+gameMinute)/720)*360;
draw_sprite_ext(sprClock,0,width/2,3*height/4,0.5,0.5,0,c_white,1);
draw_sprite_ext(sprMinuteNeedle,0,width/2,3*height/4,0.5,0.5,minuteDir,c_white,1);
draw_sprite_ext(sprHourNeedle,0,width/2,3*height/4,0.5,0.5,hourDir,c_white,1);
draw_set_color(c_white);
draw_set_font(Berlin16);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(width/2,height-80,dayText);
*/