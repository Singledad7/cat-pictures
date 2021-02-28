global.mapoffsetx = 26;
global.mapoffsety = 15;
global.waterlevel = 0;
global.watertype = 0;
global.save_room = gameoverroom;
global.floormaterial = 1;
//mus_change(mus_get_main_song());
if (instance_exists(oBigQuake) > false) add_log(3);

if(instance_number(oCharacter) > 0) mus_change(mus_get_main_song());
else oMusicV2.currentbgm = mus_get_main_song();