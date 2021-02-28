
draw_set_alpha(image_alpha);
draw_set_halign(fa_center);
draw_set_font(fontGUI2);
draw_set_color(c_white);
draw_set_color(c_black);
draw_text(x + 1, y - 7, string_hash_to_newline(mytext));
draw_set_color(c_white);
draw_text(x, y - 8, string_hash_to_newline(mytext));
draw_set_alpha(1);

