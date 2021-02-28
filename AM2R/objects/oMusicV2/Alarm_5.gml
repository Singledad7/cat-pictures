if (!sfx_isplaying(musQueenIntro) && !sfx_isplaying(musQueen)) {
    if (instance_exists(oQueen) || global.ingame == false) {
        mus_play(musQueen);
        oMusicV2.bossbgm = musQueen;
    }
} else alarm[5] = 1;

