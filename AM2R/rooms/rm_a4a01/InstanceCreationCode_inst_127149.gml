if (oControl.mod_randomgamebool == 1 && oControl.mod_previous_room == rm_a4a14 && global.item[8] == 0)
{
    instance_destroy();
}
else link_tile(tlArea4Tech, 32, 80);
regentime = -1;