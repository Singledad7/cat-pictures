block = instance_create(x, y, oDestroyedBlock);
block.type = 0;
block.regentime = -1;
block.link_id = link_id;
block.delay = delay;
with (block) event_user(1);
block1 = collision_point(x + 2, y - 2, oBlockShootChain, false, false);
block2 = collision_point(x + 18, y + 2, oBlockShootChain, false, false);
block3 = collision_point(x + 2, y + 18, oBlockShootChain, false, false);
block4 = collision_point(x - 2, y + 2, oBlockShootChain, false, false);
if (block1 > 0) with (block1) alarm[10] = 4;
if (block2 > 0) with (block2) alarm[10] = 4;
if (block3 > 0) with (block3) alarm[10] = 4;
if (block4 > 0) with (block4) alarm[10] = 4;
sfx_stop(sndBlockDestroy);
sfx_play(sndBlockDestroy);
instance_destroy();

