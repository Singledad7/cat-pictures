global.mapoffsetx = 33;
global.mapoffsety = 56;
global.waterlevel = 0;
global.watertype = 0;
global.floormaterial = 4;
make_escape_sequence_fx(2);
//if (global.event[203] == 0) mus_change(musArea4B);
if (global.event[203] == 0)
{
    if(instance_number(oCharacter) > 0) mus_change(musArea4B);
    else oMusicV2.currentbgm = musArea4B;
}


if (global.event[203] < 7) {
    tile_layer_hide(-101);
} else with (inst_130129) instance_destroy();
global.save_room = rm_subscreen;

if (global.event[203] > 0 && room_get_name(room))
{
//instance_create(144, 160, oSaveStationBroken); // 144, 160
//with (inst_130135) sprite_index = sSaveBroken;
//with (inst_130136) instance_destroy();

}