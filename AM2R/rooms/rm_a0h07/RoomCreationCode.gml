global.mapoffsetx = 43;
global.mapoffsety = 15;
global.waterlevel = 0;
if (global.lavastate <= 1) make_liquid(1, 192, 0, 0, 0, 0, 0);
mus_change(mus_get_main_song());
global.floormaterial = 1;
if (instance_exists(oBigQuake)) with (oBigQuake) if (statetime < 590) statetime = 590;

if (oControl.mod_purerandombool == 1 || oControl.mod_splitrandom == 1 || global.gamemode == 2)
//if (oControl.mod_purerandombool == 1 || oControl.mod_splitrandom = 1 || (oControl.mod_randomgamebool == 1 && oControl.mod_bombblocks == 1))
{
    with (inst_102589) { instance_destroy(); }
    with (inst_102590) { instance_destroy(); }
    with (inst_102591) { instance_destroy(); }
    with (inst_102592) { instance_destroy(); }
}