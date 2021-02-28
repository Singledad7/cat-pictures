/// @description  draw_text_shadow(x, y, text)
/// @param x
/// @param  y
/// @param  text
draw_set_color(c_black);
draw_text(argument0 + 1, argument1 + 1, string_hash_to_newline(argument2));
draw_set_color(c_white);
draw_text(argument0, argument1, string_hash_to_newline(argument2));
