
oControl.mod_fusion = 0;
global.curropt = 1;
lastitem = 2;
active = 0;
alarm[0] = 5;
h = 0;
targeth = 33;
fadein = 1;
fadeout = 0;
d0str = get_text("Title", "GameSlot_Easy");
d1str = get_text("Title", "GameSlot_Normal");
d2str = get_text("Title", "GameSlot_Hard");
if (global.saveslot == 0) {
    x = 270;
    y = 60;
}
if (global.saveslot == 1) {
    x = 270;
    y = 104;
}
if (global.saveslot == 2) {
    x = 270;
    y = 148;
}

draw_set_font(fontGUI2);
w = max(string_width(string_hash_to_newline(d0str)), string_width(string_hash_to_newline(d1str)), string_width(string_hash_to_newline(d2str))) + 10;

if (oControl.mod_insanitymode) {
    mycolor = make_color_rgb(187, 3, 3);
} else {
    mycolor = make_color_rgb(3, 187, 25);
}

