/// get_text(section, key)
// In theory this is kind of slow but no one will notice.
ini_open_from_string(global.language[global.currentlanguage]);
var text = ini_read_string(argument0, argument1, "[!]");
ini_close();

if (text == "[!]") {
    writelog("get_text error: " + argument0 + "|" + argument1);
}
return text;
