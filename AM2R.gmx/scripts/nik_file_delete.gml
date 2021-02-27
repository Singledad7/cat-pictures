///nik_file_delete(filename)

with (oStartupControl) {
    strmap[? argument0] = "";
    writelog("Deleted file " + argument0);
}
