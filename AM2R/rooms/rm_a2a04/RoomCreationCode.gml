global.mapoffsetx = 34;
global.mapoffsety = 18;
global.waterlevel = 0;
global.watertype = 0;
global.floormaterial = 3;

mus_change_itemroom();

if (global.event[103] > 0 && global.item[scr_itemchange(3)] == 0) {
    if(oControl.mod_fusion == 1) {
        var inst = instance_create(room_width/2, room_height/2, oCoreX);
        inst.alarm[1] = -1;
        inst.state = 1;
        inst.statetime = 0;
    }
    else instance_create(global.event[103], 192, scr_itemsopen(oControl.mod_jumpball));
}
if (global.event[103] > 0)
{
if (instance_exists(inst_5508C862)) { with (inst_5508C862) instance_destroy(); }
if (instance_exists(inst_A0EE88E3)) { with (inst_A0EE88E3) instance_destroy(); }
if (instance_exists(inst_AAB1CA75)) { with (inst_AAB1CA75) instance_destroy(); }
}