/// @description nik_file_copy(from,to)
/// @param from
/// @param to
with (oStartupControl) {
    strmap[? argument1] = strmap[? argument0];
    writelog("Copied file over to " + argument1);
}
