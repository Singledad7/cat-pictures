image_speed = 0.5;
global.savexpos = x;
active = 1;
state = 0;
statetime = 0;
targety = 0;
mysolid = instance_create(x - 16, y, oSolid1);
mysolid.image_xscale = 2;
elev_dir = 0;
target_top = 0;
target_bottom = 0;
alarm[0] = 1;

