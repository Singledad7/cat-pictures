repeat (10) instance_create(x + 32, y + 25, oDebris);
make_explosion1big(x + 32, y + 25);
sfx_play(sndRobotExpl);
instance_destroy();

