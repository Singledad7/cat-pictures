/// @description  load_stats()
var header;
filename = "extras.sav";
if (os_is_native) {
    fid = nik_open_read(filename);
} else fid = file_text_open_read(filename);
header = rc4(file_text_read_string(fid), "HEADER_KEY");
file_text_readln(fid);
if (header != "[AM2R UnlockData V7.0]") {
    file_text_close(fid);
    show_message_async("Save Data Corrupted");
    room_goto(titleroom);
} else {
    data_load_extras(fid);
    file_text_readln(fid);
    file_text_close(fid);
}
