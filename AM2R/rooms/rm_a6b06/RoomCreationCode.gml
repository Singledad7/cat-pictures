global.mapoffsetx = 22;
global.mapoffsety = 39;
global.waterlevel = 0;
global.floormaterial = 5;
global.save_room = rm_a0h02;
global.darkness = 3;
//mus_change(musArea6A);

if(instance_number(oCharacter) > 0) mus_change(musArea6A);
else oMusicV2.currentbgm = musArea6A;