alarm[0] = 10;
alarm[1] = 300;
with (oShip1) instance_destroy();
__view_set( e__VW.Object, 0, oDemoEndSeq );
sfx_stop_all();
instance_create(0, 0, oMusicFadeout);

