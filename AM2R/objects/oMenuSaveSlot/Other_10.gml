newgamestr = get_text("Title", "GameSlot_NewGame");
title = get_save_title(saveroom);
if (saveexists == 1) {
    if (sdifficulty == 0) difftext = get_text("Title", "GameSlot_Easy");
    if (sdifficulty == 1) difftext = get_text("Title", "GameSlot_Normal");
    if (sdifficulty == 2) difftext = get_text("Title", "GameSlot_Hard");
    if (sdifficulty == 3) difftext = get_text("Title-Additions", "GameSlot_NewGame_Fusion");
    if (smode == 3) modeindex = get_text("Title-Additions", "GameSlot_NewGame_ClassicMode");
    if (smode == 4) modeindex = get_text("Title-Additions", "GameSlot_NewGame_AM2Random");
    if (smode == 5) modeindex = get_text("Title-Additions", "GameSlot_NewGame_SplitRandom");
}


