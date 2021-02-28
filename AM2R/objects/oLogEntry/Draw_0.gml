draw_set_font(fontGUI2);
offset = oLogScreenControl.rectoffset * 4;
if (global.curropt == optionid) {
    w = string_width(string_hash_to_newline(label));
    draw_background_ext(bgOptionLine, x - 2, y - 1, w + 4, 1, 0, make_color_rgb(160, 160, 160), 0.4);
}
draw_set_alpha(image_alpha);
draw_set_color(c_black);
draw_text(x + 1 - offset, y - 3, string_hash_to_newline(label));
draw_set_color(c_white);
if (global.curropt != optionid) draw_set_color(c_gray);
if (global.newlog[logid]) draw_background(bgLogNew, x - 6, y - 1); // relocated
draw_text(x - offset, y - 4, string_hash_to_newline(label));
draw_set_alpha(1);

