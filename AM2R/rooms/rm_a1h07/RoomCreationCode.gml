global.mapoffsetx = 68;
global.mapoffsety = 11;
global.waterlevel = 0;
global.watertype = 0;
//mus_change(musArea1A);
global.save_room = rm_gallery;
global.floormaterial = 1;
SoundFX_Preset(1);

if(instance_number(oCharacter) > 0) mus_change(musArea1A);
else oMusicV2.currentbgm = musArea1A;