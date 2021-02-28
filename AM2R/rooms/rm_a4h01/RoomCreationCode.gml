global.mapoffsetx = 36;
global.mapoffsety = 35;
if (global.lavastate <= 6) make_liquid(1, 1644, 0, 0, 0, 0, 1);
global.floormaterial = 1;
global.darkness = 0;
if (global.event[200] == 0) {
    mus_change(musCaveAmbienceA4);
} else mus_change(musArea4A);


/*
if (oControl.mod_250 != 0 && oControl.mod_250 != 2 && oControl.mod_250 != 4 && oControl.mod_250 != 6)
{
    var t = scr_itemchange(250);
}
*/

instance_create(48, 1872, scr_itemsopen(oControl.mod_250));
//instance_create(48, 1872, scr_itemchange(250));