/// @description  save_stats()
var filename, fid;
save_str[0] = data_sav_extras();
filename = "extras.sav";
var _str = rc4("[AM2R UnlockData V7.0]", "HEADER_KEY") + global.crlf;
i = 0;
repeat (1) {
    _str += base64_encode(save_str[i]);
    _str += global.crlf;
    i += 1;
}
nik_raw_setfile(filename, _str);
savedata_flush();
