global.mapoffsetx = 27;
global.mapoffsety = 22;
global.waterlevel = 0;
global.floormaterial = 1;
global.save_room = optionsroom;
//mus_change(musArea2B);
global.objdeactivate = 1;

if(instance_number(oCharacter) > 0) mus_change(musArea2B);
else oMusicV2.currentbgm = musArea2B;