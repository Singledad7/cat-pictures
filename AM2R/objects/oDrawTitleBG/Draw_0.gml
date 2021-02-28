draw_background_ext(bgAM2RTitle, oControl.mod_xcoordinate, oControl.mod_ycoordinate, 1, 1, 0, -1, image_alpha);

draw_set_alpha(image_alpha);
draw_rectangle_colour(234 + (oControl.widescreen_space/2), 232-8, 320 + (oControl.widescreen_space/2), 231, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_set_font(global.fontMenuSmall);
draw_set_halign(fa_right);
draw_text_colour(320 + (oControl.widescreen_space/2), 232-11, string_hash_to_newline("reddit.com/r/AM2R"), -1, -1, -1, -1, image_alpha);
draw_set_halign(fa_left);

draw_background_ext(bgURL, 198+(oControl.widescreen_space/2), 232, 1, 1, 0, -1, image_alpha);
draw_set_font(global.fontVersion);
draw_background_ext(bgVersion, 0-(oControl.widescreen_space/2), 0, string_width(string_hash_to_newline(global.am2r_version)) + 1, 1, 0, -1, image_alpha);
draw_text_colour(1-(oControl.widescreen_space/2), 1, string_hash_to_newline(global.am2r_version), -1, -1, -1, -1, image_alpha);

