/// @description savedata_flush()

with (oStartupControl) {
    if (state != LOADER_STATE.NOTHING) {
        writelog("Busy, will retry when become free.");
        retry = true;
        return false;
    }
    
    var _size = 0;
    scr_define_group();
    
    // sav files
    for (var _k = ds_map_find_first(strmap), _v;
         !is_undefined(_k) && ds_map_exists(strmap, _k);
         _k = ds_map_find_next(strmap, _k)) {
         
         _v = strmap[? _k];
         var _blen = string_byte_length(_v);
         if (string_length(_v) == 0) _blen = 1;
         var _b = buffer_create(_blen, buffer_fixed, 1);
         buffer_write(_b, buffer_text, _v);
         _size += buffer_get_size(_b);
         if (_blen > 1) crypt(_b, XOR_KEY, 2);
         buffer_save_async(_b, _k, 0, buffer_get_size(_b));
    }
    
    // config.ini
    _v = oStartupControl.configsav;
    _blen = string_byte_length(_v);
    if (string_length(_v) == 0) _blen = 1;
    _b = buffer_create(_blen, buffer_fixed, 1);
    buffer_write(_b, buffer_text, _v);
    _size += buffer_get_size(_b);
    buffer_save_async(_b, "config.ini", 0, buffer_get_size(_b));
    
    // finish off...
    buffer_async_group_option("saveslotsize", _size);
    state = LOADER_STATE.SAVING;
    opid = buffer_async_group_end();
    writelog("Save initiated! Writing " + string(_size) + " bytes total.");
    return true;
}
