
draw_set_alpha(image_alpha);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fontMenuSmall2);
draw_text(x, y - 16, string_hash_to_newline(mytext));
draw_set_alpha(1);
draw_self();

