surface_set_target(surf);
draw_set_font(fontMenuSmall2);
draw_set_color(c_white);
draw_set_alpha(1);
draw_clear(c_black);
draw_text_ext(2, -12 * currentline - 2, string_hash_to_newline(logtext), 12, 148 + widescreen_space);
surface_reset_target();

