global.mapoffsetx = 43;
global.mapoffsety = 6;
global.floormaterial = 4;
global.waterlevel = 0;
global.save_room = rm_a0h03a;
global.darkness = 2;
//mus_change(musArea8);

if(instance_number(oCharacter) > 0) mus_change(musArea8);
else oMusicV2.currentbgm = musArea8;