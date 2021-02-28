logtext = txt[logobj[global.curropt].logid, global.log[logobj[global.curropt].logid] - 1];
currentline = 0;
draw_set_font(fontMenuSmall2);
height = string_height_ext(string_hash_to_newline(logtext), 12, 148 + widescreen_space);
if (height > 136) {
    scroll = 1;
    lines = floor((height - 134) / 12);
} else scroll = 0;
surface_set_target(surf);
draw_set_font(fontMenuSmall2);
draw_set_color(c_white);
draw_set_alpha(1);
draw_clear(c_black);
draw_text_ext(2, -2, string_hash_to_newline(logtext), 12, 148 + widescreen_space);
surface_reset_target();

