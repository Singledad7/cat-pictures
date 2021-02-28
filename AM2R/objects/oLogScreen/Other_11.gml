surface_set_target(surf);
draw_set_font(fontMenuSmall);
draw_set_color(c_white);
draw_set_alpha(1);
draw_clear(c_black);
draw_text_ext(2, -8 * currentline - 2, string_hash_to_newline(text), 8, 128);
surface_reset_target();

