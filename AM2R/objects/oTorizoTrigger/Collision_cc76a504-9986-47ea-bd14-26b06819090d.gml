//if (global.item[6]) {
if (global.item[scr_itemchange(6)])
{
    with (oTorizoStatue) event_user(0);
    with (oDoor) event_user(0);
    with (inst_114938) instance_destroy();
    with (inst_114925) instance_destroy();
    with (inst_114926) instance_destroy();
    mus_current_fadeout();
    global.event[152] = 1;
    instance_destroy();
}

