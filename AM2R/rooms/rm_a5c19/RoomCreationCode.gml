global.mapoffsetx = 70;
global.mapoffsety = 43;
global.floormaterial = 4;
global.waterlevel = 0;
global.watertype = 0;
global.save_room = rm_death;

/*
if (global.event[250] > 0) {
    mus_change(musArea5B);
} else mus_change(musArea5A);
*/

if (global.event[250] > 0) 
{
    if(instance_number(oCharacter) > 0) mus_change(musArea5B);
    else oMusicV2.currentbgm = musArea5B;
}
else
{
    if(instance_number(oCharacter) > 0) mus_change(musArea5A);
    else oMusicV2.currentbgm = musArea5A;
}