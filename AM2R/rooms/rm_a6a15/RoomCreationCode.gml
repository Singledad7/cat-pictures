global.mapoffsetx = 10;
global.mapoffsety = 56;
global.waterlevel = 0;
global.floormaterial = 1;
global.save_room = rm_a0h01;
//mus_change(mus_get_main_song());

if(instance_number(oCharacter) > 0) mus_change(mus_get_main_song());
else oMusicV2.currentbgm = mus_get_main_song();