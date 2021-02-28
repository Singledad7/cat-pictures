event_inherited();
myhealth = 50;
freezehp = 20;
damage = 8;
hitsound = sndEHit1;
deathsound = sndEDeath1;
canfreeze = 1;
frozenspr = sSkorpBodyFrozen;
freezefall = 0;
offset = 0;
attack = 0;
startx = x;
starty = y;
state = 0;

// 1.4.4 behavior change
image_speed = 0;
len = 11;
dir = 24;
//

disc1 = instance_create(x + lengthdir_x(len, image_angle + dir), y + lengthdir_y(len, image_angle + dir), oSkorpDisc);
disc2 = instance_create(x + lengthdir_x(len, image_angle - dir), y + lengthdir_y(len, image_angle - dir), oSkorpDisc);
lure = noone;

disc2.image_xscale = -1;
spin = 0;
alarm[0] = 10;
alarm[2] = 1;
alarm[4] = 2; //lure

/*if (real(string_char_at(room_get_name(room), 5)) == 6) {
    var newself = instance_create(x, y, oSkorpA6);
    newself.image_angle = image_angle;
    
    instance_destroy();
}




/* */
/*  */
