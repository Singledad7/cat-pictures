/// @description nik_file_delete(filename)
/// @param filename

with (oStartupControl) {
    strmap[? argument0] = "";
    writelog("Deleted file " + argument0);
}
