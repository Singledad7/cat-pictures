tile_layer_delete(-101);
repeat (20) make_explosion1big(random(48), 32 + random(176));
repeat (20) {
    debr = instance_create(random(48), 40 + random(160), oMetalDebrisBig);
    debr.direction = random_range(30, -30);
    debr.speed = 2 + random(3);
    debr.alarm[0] = 90 + random(60);
}
with (inst_130192) instance_destroy();
with (inst_130195) instance_destroy();
sfx_play(sndA4Expl);
instance_create(-100, 104, oTank);
instance_destroy();

