global.mapoffsetx = 7;
global.mapoffsety = 20;
global.waterlevel = 0;
global.floormaterial = 1;
global.objdeactivate = 0;
if (global.event[303] != 2) {
    tile_layer_hide(-99);
    tile_layer_hide(-98); // Special bricks for widescreen shenanigans
}
if (global.event[303] > 0) {
    with (inst_146524) instance_destroy();
    tile_layer_delete(-101);
    with (inst_146525) instance_destroy();
    with (inst_146520) instance_destroy();
    tile_layer_delete(-102);
    with (inst_146526) instance_destroy();
    with (inst_146514) instance_destroy();
    tile_layer_delete(-103);
    with (inst_146527) instance_destroy();
    tile_layer_delete(-104);
}