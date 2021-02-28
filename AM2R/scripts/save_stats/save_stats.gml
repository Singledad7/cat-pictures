/// @description  save_stats()
var filename, fid;
save_str[0] = sv_add_unlocks();
save_str[1] = sv_add_gallery();
save_str[2] = sv_add_stats();
save_str[3] = sv_add_achievements();
//save_str[4] = data_sav_extras();
filename = "data.sav";
var _str = rc4("[AM2R UnlockData V7.0]", "HEADER_KEY") + global.crlf;
i = 0;
repeat (4) {
    _str += base64_encode(save_str[i]);
    _str += global.crlf;
    i += 1;
}
nik_raw_setfile(filename, _str);
savedata_flush();
