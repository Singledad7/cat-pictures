/// @description  draw_text_shadow(x, y, text)
/// @param x
/// @param  y
/// @param  text
draw_set_color(make_colour_rgb(8, 24, 32)); // dark bluegreen
draw_text(argument0 + 1, argument1 + 1, string_hash_to_newline(argument2));
draw_set_color(make_colour_rgb(224, 248, 208)); // green
draw_text(argument0, argument1, string_hash_to_newline(argument2));
