/// @description  debug_draw_var2(offset, kind, text)
/// @param offset
/// @param  kind
/// @param  text
draw_set_font(fontMenuSmall);
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(argument2 + 1, 10 + i * 8 + 1, string_hash_to_newline(argument0));
draw_set_color(c_white);
if (string(argument1) == "") draw_set_color(c_yellow);
if (string(argument1) == "0") draw_set_color(c_gray);
draw_text(argument2, 10 + i * 8, string_hash_to_newline(argument0));
i += 1;
