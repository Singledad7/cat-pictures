///palettes_async_init()

scr_define_group();

//mods/palettes/metroids/config.ini
var _b = buffer_create(1, buffer_grow, 1);
var _p = path_combine("mods", "palettes", "metroids", "config.ini");
bufmap[? _p] = _b;
buffer_load_async(_b, _p, 0, -1);

state = LOADER_STATE.PALETTESM_INI;
opid = buffer_async_group_end();
