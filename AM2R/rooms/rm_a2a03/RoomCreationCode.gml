global.mapoffsetx = 35;
global.mapoffsety = 18;
global.waterlevel = 0;
global.watertype = 0;
global.floormaterial = 4;
global.save_room = quitroom;
//mus_change(musArea2A);

if(instance_number(oCharacter) > 0) mus_change(musArea2A);
else oMusicV2.currentbgm = musArea2A;