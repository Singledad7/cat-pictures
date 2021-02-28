// Part 3 Queen theme

if (!instance_exists(oQueenFireball) && !sfx_isplaying(musQueen3))
{
    if (instance_exists(oQueen) || global.ingame == false)
    {
        mus_play(musQueen3);
        oMusicV2.bossbgm = musQueen3;
    }
}
else
{
    alarm[7] = 1;
}

