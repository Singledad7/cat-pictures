/// sv6_load_details()
var header;
filename = argument0;
if (os_is_native) {
    fid = nik_open_read(filename);
} else fid = file_text_open_read(filename);
header = rc4(file_text_read_string(fid), "HEADER_KEY");
file_text_readln(fid);
if (header != "[AM2R SaveData V7.0]") {
    file_text_close(fid);
    show_message_async("Save Data Corrupted");
    return -1;
} else {
    sv6_get_main(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    sv6_get_random(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    sv6_get_seed(fid); //Added 1.4.3
    file_text_readln(fid);
    file_text_close(fid);
    return 1;
}
