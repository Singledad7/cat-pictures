if (!sfx_isplaying(musMonsterAppear) && !sfx_isplaying(musOmegaFight)) {
    if (instance_exists(oMOmega) && oMOmega.myhealth > false || global.ingame == 0) {
        mus_play(musOmegaFight);
        oMusicV2.bossbgm = musOmegaFight;
    }
} else alarm[4] = 1;

