global.mapoffsetx = 31;
global.mapoffsety = 55;
global.waterlevel = 0;
global.watertype = 0;
global.floormaterial = 4;
make_escape_sequence_fx(2);
if (global.event[203] > 0) with (oA4EscapeControl) {
    gototemp = 30;
    alarm[0] = 1;
}

if (oControl.mod_randomgamebool == 1 && global.item[7] == 0)
{  
    with inst_130625 instance_destroy();
    with inst_130626 instance_destroy();
    with inst_130627 instance_destroy();
}
else 
{
    with inst_8DA02DED instance_destroy();
    with inst_674656A6 instance_destroy();
    with inst_FEF6377F instance_destroy();
}