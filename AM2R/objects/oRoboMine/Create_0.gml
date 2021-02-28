event_inherited();
canbeX = 0;
myhealth = 1;
damage = 30;
stuntime = 4;
hpush = 6;
vpush = -3;
hitmissileexpl = 0;
hitsound = sndEHit1;
deathsound = sndElectricExpl;
canfreeze = 1;
platyoffset = -6;
frozenspr = sRobotMineFrozen;
flipx = 0;
target = 0;
state = 0;
statetime = 0;
alarm[0] = 60 + random(60);
hitemp = 1;
empspr = sRobotMineDisabled;
targetx = x;
targety = y;
startx = x;
starty = y;
currtgt = 0;
interval = 60;
moveratio = 0.1;
for (i = 0; i < 10; i += 1) {
    tgtx[i] = x;
    tgty[i] = y;
}
spark = -4;

