draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(x, y, x - w - 4, y + h / 3 + 3, false);
draw_set_alpha(1);
draw_line(x, y, x, y + h / 3 + 3);
draw_background_ext(bgSaveSlotLine2, x - w - 4, y, 1, h / 3 + 5, 0, mycolor, 1);
draw_background_ext(bgSaveSlotLine1, x - w, y + h / 3 + 3, w + 1, 1, 0, mycolor, 1);

