global.event[109] = 1;
global.monstersarea += 1;
instance_create(144, 96, oMGammaMutate);
ecam = instance_create(x, y - 16, oEventCamera2);
ecam.targetx = oMGammaMutate.x;
ecam.targety = y;
ecam.ratio = 8;
__view_set( e__VW.Object, 0, oEventCamera2 );
mus_current_fadeout();
instance_destroy();

