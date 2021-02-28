global.mapoffsetx = 32;
global.mapoffsety = 43;
global.waterlevel = 0;
global.watertype = 0;
global.floormaterial = 1;
make_escape_sequence_fx(2);
if (global.event[203] > 0) with (oA4EscapeControl) {
    gototemp = 80;
    alarm[0] = 1;
}

if (oControl.mod_randomgamebool == 1 && global.item[0] == 0 && ((global.ptanks == 0) || (global.ptanks == 1 && global.event[203] > 0 && global.event[203] < 9)))
{
    //right blocks
    with inst_129213 instance_destroy();
    with inst_129214 instance_destroy();
    with inst_129215 instance_destroy();
    with inst_129216 instance_destroy();
    with inst_129217 instance_destroy();
    //middle blocks
    with inst_129218 instance_destroy();
    with inst_129219 instance_destroy();
    with inst_129220 instance_destroy();
    with inst_129221 instance_destroy();
    with inst_129222 instance_destroy();
    with inst_129223 instance_destroy();
    with inst_129224 instance_destroy();
    with inst_129225 instance_destroy();
    with inst_129226 instance_destroy();
    //left block
    with inst_129227 instance_destroy();
}