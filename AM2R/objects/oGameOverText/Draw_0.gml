draw_set_color(c_black);
draw_set_alpha(0.4);
draw_rectangle(0, y - 8, 350, y + 22, false);
draw_set_font(fontGUI);
draw_set_halign(fa_center);
draw_cool_text(x, y + oControl.GUIOffset, gameover_str, c_black, c_red, c_maroon, 1);
draw_set_halign(fa_left);

