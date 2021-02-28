if (!sfx_isplaying(musMonsterAppear) && !sfx_isplaying(musZetaFight)) {
    if (instance_exists(oMZeta) && oMZeta.myhealth > false || global.ingame == 0) {
        mus_play(musZetaFight);
        oMusicV2.bossbgm = musZetaFight;
    }
} else alarm[3] = 1;

