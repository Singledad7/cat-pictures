global.mapoffsetx = 73;
global.mapoffsety = 28;
global.watertype = 0;
global.waterlevel = 0;
global.floormaterial = 4;
global.save_room = maproom;
//mus_change(musArea3A);

if(instance_number(oCharacter) > 0) mus_change(musArea3A);
else oMusicV2.currentbgm = musArea3A;