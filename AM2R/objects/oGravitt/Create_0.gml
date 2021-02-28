event_inherited();
setCollisionBounds(-4, -4, 4, 0);
myhealth = 40;
freezehp = 35;

damage = 18;
hitsound = sndEHit1;
deathsound = sndEDeath1;
platyoffset = -20;
frozenspr = sGravittFrozen;
flipx = 0;
yoffset = 0;
state = 1;
statetime = 0;
shell = instance_create(x, y, oGravittShell);
shell.damage = 18;
shell.active = 1;
active = 1;

