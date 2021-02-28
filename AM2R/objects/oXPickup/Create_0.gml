/// @description Primary Settings
state = 0;
statetime = 0;
collectable = 0;
reform = random(1);
move = 0;

image_speed = 0.2;
xvariant = 0;
xtype = sHXPickup;
flashing = 0;
fxtimer = 0;

sizeX = 1;
sizeY =1;

relativeX = 0;
relativeY = 0;

// origin point velocity
originVelX = 0;
originVelY = 0;
// parasite velocity
velX = 0;
velY = 0;
 
//counter for it to stand still for a bit before moving
counter = 30;
 
//orbit point
orbitX = xstart;
orbitY = ystart;
orbitCounter = 0; //orbit point randomize counter
xExit = choose(-5,5,-7,7,-9,9);
yExit = choose(-5,5,-7,7,-9,9);

frozenAngle = 0;
drawAngle = 0;

drawHalzynShields = false;

inview = true;

