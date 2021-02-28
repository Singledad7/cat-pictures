/// @description nik_raw_setfile(fname, contents)
/// @param fname
/// @param  contents

with (oStartupControl) {
    strmap[? argument0] = argument1;
    writelog("Changed file " + argument0);
}
