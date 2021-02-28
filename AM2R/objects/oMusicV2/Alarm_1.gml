if (!sfx_isplaying(musMonsterAppear) && !sfx_isplaying(musAlphaFight)) {
    if (instance_exists(oMAlpha) && oMAlpha.myhealth > false || global.ingame == 0) {
        mus_play(musAlphaFight);
        oMusicV2.bossbgm = musAlphaFight;
    }
} else alarm[1] = 1;

