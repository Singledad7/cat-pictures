action_inherited();
makeActive();
setCollisionBounds(-4, -4, 4, 0);
myhealth = 18;
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0)){
    freezehp = floor(myhealth * .15);
    if (freezehp < 1) freezehp = 1;
} //nerfed frozen enemies in random games
damage = 8;
hitsound = sndEHit1;
deathsound = sndEDeath1;
platyoffset = -6;
frozenspr = sSeerookFrozen;
target = 0;
canattack = 1;
flipx = 0;
state = 1;
alarm[0] = 120 + random(200);

