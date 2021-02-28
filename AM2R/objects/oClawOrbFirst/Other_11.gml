ecam = instance_create(x, y - 16, oEventCamera);
ecam.targetx = 800;
ecam.targety = y;
ecam.ratio = 8;
ecam.alarm[0] = 280;
__view_set( e__VW.Object, 0, oEventCamera );
with (oA1MovingPlatform2) alarm[0] = 60;
global.event[58] = 1;

