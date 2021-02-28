if (is_musitemamb2_present()) {
    if(oMusicV2.currentbgm != musItemAmb2 && oMusicV2.bossbgm == sndJump) mus_stop_muted();
} else if (oMusicV2.bossbgm == sndJump) mus_stop_muted();

