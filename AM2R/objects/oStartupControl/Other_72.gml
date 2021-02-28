/// @description Handle events from the system.

var _id = async_load[? "id"];
var _status = async_load[? "status"];

if (_id == opid) {
    switch (state) {
        case LOADER_STATE.MODIFIERS_INI: {
            var _p = "modifiers.ini";
            var _b = bufmap[? _p];
            var _s = buffer_read(_b, buffer_string);
            buffer_delete(_b);
            ds_map_clear(bufmap);
            modifiers = _s;
            loadmsg += "loaded modifiers.ini#";
            fontsizes_async_init();
            break;
        }
        
        case LOADER_STATE.FONTSIZES_INI: {
            var _p = path_combine("lang", "fonts", "sizes.ini");
            var _b = bufmap[? _p];
            var _s = buffer_read(_b, buffer_string);
            buffer_delete(_b);
            ds_map_clear(bufmap);
            fontsizes = _s;
            loadmsg += "loaded sizes.ini#";
            palettes_async_init();
            break;
        }
        
        case LOADER_STATE.PALETTESM_INI: {
            var _p = path_combine("mods", "palettes", "metroids", "config.ini");
            var _b = bufmap[? _p];
            var _s = buffer_read(_b, buffer_string);
            buffer_delete(_b);
            ds_map_clear(bufmap);
            palettesm = _s;
            loadmsg += "loaded palette config.ini#";
            language_async_init();
            break;
        }  
        
        case LOADER_STATE.LANGUAGES_TXT: {
            var _p = path_combine("lang", "languages.txt");
            var _b = bufmap[? _p];
            var _s = buffer_read(_b, buffer_string);
            buffer_delete(_b);
            ds_map_clear(bufmap);
            init_languages(_s);
            loadmsg += "loaded languages.txt#";
            break;
        }
        
        case LOADER_STATE.LANGUAGES_INI: {
			var _p = llist[| 0];
			var _b = bufmap[? _p];
			var _s = buffer_read(_b, buffer_string);
			buffer_delete(_b);
			ds_map_delete(bufmap, _p);
			ds_list_delete(llist, 0);
			if (string_length(_s) > 1) {
				writelog("valid lang ini " + _p);
				global.language[array_length_1d(global.language)] = _s;
				loadmsg += _p + ",";
			}
			language_async_handle();
            break;
        }
		
		case LOADER_STATE.CONFIGSAV_INI: {
            var _p = "config.ini";
            var _b = bufmap[? _p];
            var _s = buffer_read(_b, buffer_string);
            buffer_delete(_b);
            ds_map_clear(bufmap);
            configsav = _s;
            loadmsg += "loaded savedata/config.ini#";
            savedata_async_init();
            break;
        }
        
        case LOADER_STATE.SAVEDATA: {
            for (var _k = ds_map_find_first(bufmap), _v;
                 !is_undefined(_k) && ds_map_exists(bufmap, _k);
                 _k = ds_map_find_next(bufmap, _k)) {
                 
                 _v = bufmap[? _k];
                 writelog("bsize " + string(buffer_get_size(_v)));
                 if (buffer_get_size(_v) > 1) {
                    crypt(_v, XOR_KEY, 2);
                    var _s = buffer_read(_v, buffer_string);
                    strmap[? _k] = _s;
                    loadmsg += _k + "#";
                 }
                 else {
                    writelog("Empty save file " + _k);
                 }
                 buffer_delete(_v);
            }
            ds_map_clear(bufmap);
            alarm[0] = 2*room_speed;
            state = LOADER_STATE.NOTHING;
            loadmsg += "#done.";
            break;
        }
        
        case LOADER_STATE.SAVING: {
            for (var _k = ds_map_find_first(bufmap), _v;
                 !is_undefined(_k) && ds_map_exists(bufmap, _k);
                 _k = ds_map_find_next(bufmap, _k)) {
                 
                 _v = bufmap[? _k];
                 buffer_delete(_v);
                 writelog("Freed save file " + _k);
            }
            ds_map_clear(bufmap);
			switch_save_data_commit();
            state = LOADER_STATE.NOTHING;
            break;
        }
        
        default: {
            show_error("Unknown async loader state=" + string(state), true);
            break;
        }
    }
}
else {
    writelog("async id mismatch! is this a buffer event, and not a buffer GROUP event?");
}

