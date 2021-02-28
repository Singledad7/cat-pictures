/// @description Initialize async stuff.

enum LOADER_STATE {
    NOTHING,       // what
    MODIFIERS_INI, // modifiers.ini
    FONTSIZES_INI, // lang/sizes.ini
    PALETTESM_INI, // palette swapper config
    CONFIGSAV_INI, // [savedata]/config.ini
    LANGUAGES_TXT, // languages.txt
    LANGUAGES_INI, // lang/[ini files]
    SAVEDATA,      // [savedata]/save[1;3] or data/extras.sav
    SAVING         // flushing savedata
};

global.path_sep = "/";
if (os_type == os_windows || os_type == os_winphone || os_type == os_uwp || os_type == os_win8native) {
    global.path_sep = "\\";
}
global.crlf = chr(13) + chr(10); // 0d0a windows crlf.

state = LOADER_STATE.NOTHING;
bufmap = ds_map_create();
strmap = ds_map_create();

// inis
modifiers = "";
fontsizes = "";
configsav = "";
palettesm = "";

opid = -1;
retry = false;
start = false;
loadmsg = "hi, privet, guten tag, please DON'T mention this port#on AM2R sites (reddit/discord)#press any button to setup netlog#";

pads = array_create(gamepad_get_device_count());
pad = 0;
msg = -1;
url = "";

once = false;
alarm[1] = 5*room_speed;

nik_switch_joyconer();