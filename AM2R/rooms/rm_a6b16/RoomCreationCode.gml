global.mapoffsetx = 9;
global.mapoffsety = 42;
global.waterlevel = 0;
global.watertype = 0;
global.floormaterial = 5;
global.save_room = rm_a0h02a;
//mus_change(musArea6A);

if(instance_number(oCharacter) > 0) mus_change(musArea6A);
else oMusicV2.currentbgm = musArea6A;