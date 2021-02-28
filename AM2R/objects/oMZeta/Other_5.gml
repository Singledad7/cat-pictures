if (global.ingame == 1 && state != 0) {
    mus_stop(musZetaFight);
    with (oMusicV2) {
        alarm[3] = -1;
        bossbgm = sndJump;
    }
    mus_current_fadein();
}

