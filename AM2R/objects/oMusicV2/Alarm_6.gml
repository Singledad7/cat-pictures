// Part 2 Queen theme.
if (!instance_exists(oQueenFireball) && !sfx_isplaying(musQueen2))
{
    if (instance_exists(oQueen) || global.ingame == false)
    {
        mus_play(musQueen2);
        oMusicV2.bossbgm = musQueen2;
    }
}
else
{
    alarm[6] = 1;
}

