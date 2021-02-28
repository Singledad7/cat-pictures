action_inherited();
makeActive();
setCollisionBounds(-4, -4, 4, 0);
myhealth = 5;
damage = 2;
hitsound = sndEHit1;
deathsound = sndEDeath2;
platyoffset = -4;
frozenspr = sYumboFrozen;
target = 0;
canattack = 1;
freezetime = 400;
state = 1;
alarm[0] = 60 + random(120);
alarm[1] = 90 + random(120);
alarm[3] = 4;

