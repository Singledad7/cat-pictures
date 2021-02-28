global.mapoffsetx = 58;
global.mapoffsety = 18;
global.watertype = 0;
global.waterlevel = 0;
global.floormaterial = 3;
global.objdeactivate = 1;
if (is_musitemamb2_present()) {
    if(oMusicV2.currentbgm == musItemAmb2) {
        if (oMusicV2.previousbgm == musArea3A) mus_change(musArea3A);
        else mus_change(musCaveAmbience);
    }
}
instance_create(2592, 1120, scr_itemsopen(oControl.mod_202));
instance_create(64, 1648, scr_itemsopen(oControl.mod_211));