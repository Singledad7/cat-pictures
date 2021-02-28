/// @description  Initialization.

acceleration = 0.08;
maxspeed = 3.25;
drag = 0.025;
forcemissile = 4;
forcesupermissile = 5;
// health PER STAGE
myhealth[0] = 1; // blue
myhealth[1] = 1; // yellow
myhealth[2] = 1; // red
damage = 40;
missiledamage = 1;
superdamage = 2;
gravity = 0;
gravity_direction = 270;
state = 0;
statetime = 0;
canbehit = 1;
flashing = 0;
fxtimer = 0;
invulnerability = 180;
sparkcount = 2;
image_index = 0;
image_speed = 0;
sprite_index = sCoreXShell;
canSpawnX = true;
canbeX = 1;

if(room == rm_a2a04) { // Arachnus
    damage = global.mod_coreArachnusDamage;
    myhealth[0] = global.mod_coreArachnusHealthBlue;
    myhealth[1] = global.mod_coreArachnusHealthYellow;
    myhealth[2] = global.mod_coreArachnusHealthRed;
}

if(room == rm_a3a01) { // Torizo
    damage = global.mod_coreTorizoDamage;
    myhealth[0] = global.mod_coreTorizoHealthBlue;
    myhealth[1] = global.mod_coreTorizoHealthYellow;
    myhealth[2] = global.mod_coreTorizoHealthRed;
}

if(room == rm_a8a11) { // Genesis
    damage = global.mod_coreGenesisDamage;
    myhealth[0] = global.mod_coreGenesisHealthBlue;
    myhealth[1] = global.mod_coreGenesisHealthYellow;
    myhealth[2] = global.mod_coreGenesisHealthRed;
}

if(room == rm_a5b03a) { //Eris
    damage = global.mod_coreErisDamage;
    myhealth[0] = global.mod_coreErisHealthBlue;
    myhealth[1] = global.mod_coreErisHealthYellow;
    myhealth[2] = global.mod_coreErisHealthRed;
}

/// Morph sttings.

sizeX = 1;
sizeY = 1;
xtype = sCoreXShell;

