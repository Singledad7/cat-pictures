/// @description  unlock_gallery(index)
/// @param index
if (global.gallery[argument0] == 0) {
    global.gallery[argument0] = 1;
    save_stats();
    if (!nik_file_exists("extras.sav")) {
        save_stats2();
        load_stats2();
    } //without this you can't play random games without restart
}
