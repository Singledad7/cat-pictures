/// @description  unlock_set(index)
/// @param index
if (global.unlock[argument0] == 0) {
    global.unlock[argument0] = 1;
    save_stats();
    if (!nik_file_exists("extras.sav")) {
        save_stats2();
        load_stats2();
    } //without this you can't play random games without restart
}
