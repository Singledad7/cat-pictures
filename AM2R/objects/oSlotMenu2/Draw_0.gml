draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(x, y, x - w, y + h, false);
draw_set_alpha(1);
draw_line(x, y, x, y + h);
//draw_background_ext(bgSaveSlotLine2, x - w - 4, y, 1, h + 12, 0, make_color_rgb(3, 187, 25), 1);
//draw_background_ext(bgSaveSlotLine1, x - w, y + h + 10, w + 1, 1, 0, make_color_rgb(3, 187, 25), 1);
draw_background_ext(bgSaveSlotLine2, x - w - 4, y, 1, h + 2, 0, mycolor, 1);
draw_background_ext(bgSaveSlotLine1, x - w, y + h, w + 1, 1, 0, mycolor, 1);

