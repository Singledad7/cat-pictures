draw_set_font(fontGUI2);
offset = (oLogScreen.rectoffset * 4);
if (global.curropt == optionid) {
    w = string_width(string_hash_to_newline(label));
    draw_background_ext(bgOptionLine, x - 2, y - 1, w + 4, 1, 0, make_color_rgb(160, 160, 160), 0.4);
}
draw_set_alpha(image_alpha);
draw_set_color(c_black);
draw_text(x + 1 - offset, y - 3, string_hash_to_newline(label));
draw_set_color(c_white);
if (global.curropt != optionid) draw_set_color(c_gray);
draw_text(x - offset, y - 4, string_hash_to_newline(label));
draw_set_alpha(1);
if (global.curropt == optionid) draw_background_ext(lpic, __view_get( e__VW.XView, 0 ) + 160 + offset * 4, __view_get( e__VW.YView, 0 ) + 59, 1, 1, 0, -1, image_alpha);

