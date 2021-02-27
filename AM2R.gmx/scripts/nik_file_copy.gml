///nik_file_copy(from,to)
with (oStartupControl) {
    strmap[? argument1] = strmap[? argument0];
    writelog("Copied file over to " + argument1);
}
