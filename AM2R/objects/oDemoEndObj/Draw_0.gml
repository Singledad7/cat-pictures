draw_set_font(fontGUI2);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(x + xoff, y + yoff + sep, string_hash_to_newline("Items: " + items + " %"));
draw_text(x + xoff, y + yoff + sep * 2, string_hash_to_newline("Time: " + timetext));

