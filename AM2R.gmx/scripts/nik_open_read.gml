///nik_open_read(filename)

with (oStartupControl) {
    var _s = "";
    if (ds_map_exists(strmap, argument0)) {
        _s = strmap[? argument0];
    }
    
    return file_text_open_from_string(_s);
}
