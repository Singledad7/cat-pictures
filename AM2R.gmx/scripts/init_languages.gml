///init_languages(str)
var file, fid, i;
global.currentlanguage = 0;
global.language = 0;
i = 0;
scr_define_group();
for (fid = file_text_open_from_string(argument0); !file_text_eof(fid); i++) {
    file = file_text_read_string(fid);
    file_text_readln(fid);
    
    var path = path_combine("lang", file);
    var _b = buffer_create(1, buffer_grow, 1);
    bufmap[? path] = _b;
    strmap[? path] = i;
    buffer_load_async(_b, path, 0, -1);
    writelog("Trying to load language ini file=" + path + ",i=" + string(i));
}

file_text_close(fid);
state = LOADER_STATE.LANGUAGES_INI;
opid = buffer_async_group_end();
