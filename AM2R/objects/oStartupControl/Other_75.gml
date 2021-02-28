/// @description detect pads at early boot.

var _event_type = string(async_load[? "event_type"]);
var _pad_index = async_load[? "pad_index"];
if (_event_type == "gamepad discovered") {
    pad = _pad_index;
    pads[pad] = true;
    writelog("Found pad at slot no." + string(pad));
}
else if (_event_type == "gamepad lost") {
    pads[_pad_index] = false;
    writelog("Lost pad at slot no." + string(_pad_index));
    
    if (pad == _pad_index) {
        var _found = false;
        for (var _i = 0; _i < array_length_1d(pads); _i++) {
            if (pads[_i]) {
                _found = true;
                pad = _i;
                writelog("Rebound to pad at slot no." + string(_i));
                break;
            }
        }
        
        if (!_found) {
            writelog("All controllers are disconnected.");
            // switch
        }
    }
}

