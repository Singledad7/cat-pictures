action_inherited();
myhealth = 10;
damage = 30;
hitsound = sndEHit2;
deathsound = sndEDeath2;
platyoffset = -6;
frozenspr = sSkreekA6_frozen;
flipx = 1;
state = 0;
active = 0;
spit = 0;
cooldown = 0;
if (x >= oCharacter.x) facing = -1;
if (x < oCharacter.x) facing = 1;
image_speed = 0.2; // originally 0.25

// Trap trigger
trigger = 0;
launch = 0;

