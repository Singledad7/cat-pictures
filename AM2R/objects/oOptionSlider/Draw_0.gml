draw_set_font(fontGUI2);
draw_set_color(c_black);
draw_set_alpha(0.4);
if (global.curropt == optionid) draw_set_color(c_gray);
draw_rectangle(x - 2, y - 1, x + textoffset - 8, y + 8, false);
draw_rectangle(x + textoffset - 1, y - 1, x + textoffset + w + 1, y + 8, false);
draw_set_alpha(0.8);
draw_set_color(c_green);
draw_rectangle(x + textoffset, y, x + textoffset + slwidth, y + 7, false);
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(x + 1, y - 3, string_hash_to_newline(label));
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(x, y - 4, string_hash_to_newline(label));
draw_set_alpha(1);

