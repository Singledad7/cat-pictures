action_inherited();
canbeX = 0;
myhealth = 15;
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0)){
    freezehp = floor(myhealth * .15);
    if (freezehp < 1) freezehp = 1;
} //nerfed frozen enemies in random games
damage = 4;
hitsound = sndRobotHit2;
deathsound = sndRobotExpl;
platyoffset = -6;
frozenspr = sWallfireFrozen;
target = 0;
canattack = 1;
state = 1;
image_speed = 0;
if (global.difficulty == 0) alarm[0] = 90;
if (global.difficulty == 1) alarm[0] = 60;
if (global.difficulty == 2) alarm[0] = 60;
hitemp = 1;
empspr = sWallfireDisabled;
freezefall = 0;

