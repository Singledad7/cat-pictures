action_inherited();
canbeX = 0;
myhealth = 8;
damage = 16;
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0)){
    freezehp = floor(myhealth * .15);
    if (freezehp < 1) freezehp = 1;
} //nerfed frozen enemies in random games
hitsound = sndRobotHit3;
deathsound = sndRobotHit2;
canfreeze = 1;
platyoffset = -6;
frozenspr = sTPO2Frozen;
flipx = 0;
state = 1;
active = 1;
hitemp = 1;
empspr = sTPO2Disabled;

