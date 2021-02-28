/// @description  draw_cool_text(x, y, text, outline_color, top_color, bottom_color, alpha, scale)
/// @param x
/// @param  y
/// @param  text
/// @param  outline_color
/// @param  top_color
/// @param  bottom_color
/// @param  alpha
/// @param  scale
draw_set_alpha(argument6);
draw_set_color(argument3);
draw_text_transformed(argument0 + 1, argument1, string_hash_to_newline(argument2), argument7, argument7, image_angle);
draw_text_transformed(argument0 - 1, argument1, string_hash_to_newline(argument2), argument7, argument7, image_angle);
draw_text_transformed(argument0, argument1 + 1, string_hash_to_newline(argument2), argument7, argument7, image_angle);
draw_text_transformed(argument0, argument1 - 1, string_hash_to_newline(argument2), argument7, argument7, image_angle);
draw_text_transformed(argument0 + 1, argument1 + 1, string_hash_to_newline(argument2), argument7, argument7, image_angle);
draw_text_transformed(argument0 + 1, argument1 - 1, string_hash_to_newline(argument2), argument7, argument7, image_angle);
draw_text_transformed(argument0 - 1, argument1 + 1, string_hash_to_newline(argument2), argument7, argument7, image_angle);
draw_text_transformed(argument0 - 1, argument1 - 1, string_hash_to_newline(argument2), argument7, argument7, image_angle);
draw_text_transformed_colour(argument0, argument1, string_hash_to_newline(argument2), argument7, argument7, image_angle, argument4, argument4, argument5, argument5, argument6);
draw_set_alpha(1);
