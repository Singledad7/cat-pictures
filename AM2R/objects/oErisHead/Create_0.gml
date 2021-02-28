canbeX = 1;
// hp = 100;
hp = global.mod_serrisHealth;

// Check for ice in random games
if (global.item[11] == 0) {
    hp = hp * 1.5;
}
maxhp = hp;
// damage = 50;
damage = global.mod_serrisDamage;
speed = 0; // regular move at 4
boosting = 0;
jawoff = 2;
fxtimer = 0;
flashing = 0;
bodylength = 14; // 15 segments, plus head makes 16
roaring = 0;
inrange = 0;
facing = -1;
direction = 180;
turnspeed = 3;
stun = 0;

cooldown = 0;

phase = 0;
boostphase = 0;
boostlaunch = 0;
lock = 0;
state = 10;
statetime = 0;
nextstate = 0;

startx = x;

// Targeting routine init
tgt = 0;
/*for (var p = 0; p < 8; p ++) {
    tgt1x[p] = 0;
    tgt1y[p] = 0;
    tgt2x[p] = 0;
    tgt2y[p] = 0;
    tgt3x[p] = 0;
    tgt3y[p] = 0;
    tgt4x[p] = 0;
    tgt4y[p] = 0;
}*/

for (var i = bodylength; i >= 0; i --) { // Create body

    segment[i] = instance_create(x, y, oErisSegment);
    segment[i].x = x + (i*26); // DEBUG THIS LATER
    segment[i].order = i;
    segment[i].image_angle = image_angle;
    segment[i].direction = direction;
    segment[i].depth = -50 - i;
    if (i > 12) {
        segment[i].spr_normal = sErisNeck;
        segment[i].spr_frozen = sErisNeckF;
        segment[i].spr_open = sErisNeckD;
    } else if ((i < 4) && (i > 0)) {
        segment[i].spr_normal = sErisBody2;
        segment[i].spr_frozen = sErisBody2F;
        segment[i].spr_open = sErisBody2D;
    } else if (i == 0) {
        segment[i].sprite_index = sErisBody3;
        segment[i].tail = 1;
    }
}

alarm[0] = 1; // Bubbles!
alarm[1] = 120; // Move SFX

/* */
/*  */
