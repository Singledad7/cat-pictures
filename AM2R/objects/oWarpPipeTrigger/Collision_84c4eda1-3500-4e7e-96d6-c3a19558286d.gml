//if (instance_id == inst_133698) { exit; }

if (other.state == 23 && other.xVel == 0 && state == 0) {
    with (other) {
        state = 60;
        statetime = 0;
    }
    state = 1;
    statetime = 0;
    sfx_play(sndMorphBallSlot);
}

