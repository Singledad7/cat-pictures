mus_loop(musTitle);
global.vibL = 0;
global.vibR = 0;

/*
if (ds_map_exists(global.maprandom, "PureRandom")) {
    ds_map_destroy(global.maprandom);
    global.maprandom = ds_map_create();
}
*/

scr_default_global_items();
//scr_default_maprandom();