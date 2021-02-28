event_inherited();
makeActive();
setCollisionBounds(-14, -14, 14, 14);
facing = 1;
myhealth = 60;
freezehp = 10;
damage = 32;
hpush = 6;
vpush = -3;
hitsound = sndEHit2;
deathsound = sndEDeath1;
platyoffset = -6;
frozenspr = sDrivelFrozen;
flipx = 0;
state = 0;
limit_l = x - 80;
limit_r = x + 80;
targety = y + 8;
image_speed = 0.2;

if (global.difficulty >= 2) {
    alarm[0] = 60;
}

