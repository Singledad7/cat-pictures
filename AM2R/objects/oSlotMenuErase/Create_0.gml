global.curropt = 1;
lastitem = 1;
active = 0;
h = 0;
targeth = 33;
fadein = 1;
fadeout = 0;
lblstr = get_text("Title", "GameSlot_EraseConfirm");
yesstr = get_text("GlobalOptions", "Yes");
nostr = get_text("GlobalOptions", "No");
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
w = max(string_width(string_hash_to_newline(lblstr)), string_width(string_hash_to_newline(yesstr)), string_width(string_hash_to_newline(nostr))) + 10;

if (oControl.mod_insanitymode) {
    mycolor = make_color_rgb(187, 3, 3);
} else {
    mycolor = make_color_rgb(3, 187, 25);
}

