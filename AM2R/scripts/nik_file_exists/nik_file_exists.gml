/// @description nik_file_exists(fname)
/// @param fname
var _m = oStartupControl.strmap;
if (ds_map_exists(_m, argument0)) {
    if (string_length(_m[? argument0]) > 1) {
        return true;
    }
    else {
        return false;
    }
}
else {
    return false;
}
