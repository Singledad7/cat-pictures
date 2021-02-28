instance_create(784, 144, oErisHead);
with (oDoorA5) event_user(0);
ecam = instance_create(x, y - 16, oEventCamera);
ecam.targetx = 480;
ecam.targety = 120;
ecam.ratio = 8;
ecam.alarm[0] = 300; // I believe this is the snap time - I'm going to reduce it by a second DEFAULT 300
__view_set( e__VW.Object, 0, oEventCamera );
mus_current_fadeout();
instance_destroy();

