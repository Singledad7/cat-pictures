instance_create(420, 120, oGFTrooperYellowFall);
with (oGFTrooperRed) instance_destroy();
with (oGFTrooperGreen) instance_destroy();
sfx_play(sndGFTrooperHit);
tile_layer_show(100);
instance_destroy();

