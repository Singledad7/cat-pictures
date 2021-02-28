if (!sfx_isplaying(musMonsterAppear) && !sfx_isplaying(musGammaFight)) {
    if (instance_exists(oMGamma) && oMGamma.myhealth > false || global.ingame == 0) {
        mus_play(musGammaFight);
        oMusicV2.bossbgm = musGammaFight;
    }
} else alarm[2] = 1;

