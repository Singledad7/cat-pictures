/// @description savedata_add_file(fname)
/// @param fname

var _b = buffer_create(1, buffer_grow, 1);
var _p = argument0;
bufmap[? _p] = _b;
writelog("adding xored file " + _p);
return buffer_load_async(_b, _p, 0, -1);
