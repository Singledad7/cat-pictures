if (global.ingame == 1) {
    global.monstersalive = 0;
    mus_stop(musGammaFight);
    with (oMusicV2) {
        alarm[2] = -1;
        bossbgm = sndJump;
    }
    mus_current_fadein();
}

