image_speed = 0;
image_index = 0;
state = 0;
statetime = 0;
if (global.event[152] > 0) {
    image_index = 8;
    with (inst_114938) instance_destroy();
    with (inst_114925) instance_destroy();
    with (inst_114926) instance_destroy();
    with (inst_114928) instance_destroy();
    with (inst_114929) instance_destroy();
    tile_layer_shift(-102, -336, 0);
    tile_layer_shift(-101, 0, -256);
}

