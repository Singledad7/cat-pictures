/// crypt(buffer, encryption_key, rate)
// I might have messed up something (game id?) here because 
// official and recompiled builds don't seem to be compatible.
var keypos = 0;
var gmid = string(game_id);
var key = "";
var read = 0;
var file = 0;
var epos = 0;
var rate = min(argument2, 10);
rate = max(rate, 0);
repeat (5) gmid += gmid;
epos = 0;
var keys;
repeat (floor(string_length(string(game_id)) * 5)) {
    keys[epos] = ord(string_copy(gmid, epos, 2)) ^ ord(string_char_at(argument1, keypos)) - floor(epos / 3);
    keypos += 1;
    if (keypos > string_length(argument1)) keypos = 1;
    epos += 1;
}
epos -= 1;
keypos = 0;
file = argument0;
buffer_seek(file, buffer_seek_start, 0)
var filesize = buffer_get_size(file);
rate *= filesize / 10000;
rate = round(rate);
do {
    read = buffer_read(file, buffer_u8);
    buffer_seek(file, buffer_seek_relative, -1);
    buffer_write(file, buffer_u8, read ^ keys[keypos]);
    keypos += 1;
    if (keypos > epos) keypos = 1;
    if (rate) buffer_seek(file, buffer_seek_relative, rate);
} until (buffer_tell(file) >= filesize);
buffer_seek(file, buffer_seek_start, 0);
return 1;
