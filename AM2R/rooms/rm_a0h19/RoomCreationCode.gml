global.mapoffsetx = 54;
global.mapoffsety = 34;
global.watertype = 0;
global.waterlevel = 0;
global.floormaterial = 1;
global.save_room = testroom;
//mus_change(musCaveAmbience);

if(instance_number(oCharacter) > 0) mus_change(musCaveAmbience);
else oMusicV2.currentbgm = musCaveAmbience;