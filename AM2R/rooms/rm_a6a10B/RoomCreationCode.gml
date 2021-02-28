global.mapoffsetx = 23;
global.mapoffsety = 53;
global.watertype = 0;
global.waterlevel = 0;
global.floormaterial = 1;
global.save_room = rm_a0h03b;
//mus_change(mus_get_main_song());
global.objdeactivate = 1;

if (global.lavastate == 9) make_liquid(1, 160, 0, 0, 0, 0, 0); // I think this is right lol

if(instance_number(oCharacter) > 0) mus_change(mus_get_main_song());
else oMusicV2.currentbgm = mus_get_main_song();