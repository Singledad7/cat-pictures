///language_async_init()

scr_define_group();

var _b = buffer_create(1, buffer_grow, 1);
var _p = path_combine("lang", "languages.txt");
bufmap[? _p] = _b;
buffer_load_async(_b, _p, 0, -1);

state = LOADER_STATE.LANGUAGES_TXT;
opid = buffer_async_group_end();
