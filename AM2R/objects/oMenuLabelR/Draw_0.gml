draw_set_font(fontGUI2);
w = string_width(string_hash_to_newline(text));
draw_rectangle_color(x + 2, y - 1, x - w - 3, y + 8, c_green, c_black, c_black, c_green, false);
draw_set_alpha(1);
draw_set_halign(fa_right);
draw_set_color(c_black);
draw_text(x + 1, y - 3, string_hash_to_newline(text));
draw_set_color(c_white);
draw_text(x, y - 4, string_hash_to_newline(text));
draw_set_halign(fa_left);

