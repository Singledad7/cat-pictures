/// @description init_languages(str)
/// @param str
var file, fid, i;
global.currentlanguage = 0;
global.language = 0;
i = 0;

llist = ds_list_create();
for (fid = file_text_open_from_string(argument0); !file_text_eof(fid); i++) {
    file = file_text_read_string(fid);
    file_text_readln(fid);
    
    var path = path_combine("lang", file);
    var _b = buffer_create(1, buffer_grow, 1);
	ds_list_add(llist, path);
	bufmap[? path] = _b;
	
    writelog("Trying to load language ini file=" + path + ",i=" + string(i));
}

file_text_close(fid);

language_async_handle();