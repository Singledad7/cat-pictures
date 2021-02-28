action_inherited();
myhealth = 15;
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0)){
    freezehp = floor(myhealth * .15);
    if (freezehp < 1) freezehp = 1;
} //nerfed frozen enemies in random games
damage = 12;
hitsound = sndEHit2;
deathsound = sndEDeath1;
platyoffset = -6;
frozenspr = sGulluggFrozen;
flipx = 0;
target = 0;
canattack = 1;
state = 1;

