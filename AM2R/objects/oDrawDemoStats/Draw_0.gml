draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(x, y, x + 320, y + 80, false);
draw_set_alpha(1);
draw_set_font(fontGUI2);
draw_cool_text(x + 4, y - 12, "Your Stats:", c_black, c_white, c_red, 1);
draw_cool_text(x + xoff, y + yoff + sep, "Items: " + string(global.itemstaken) + "/25", c_black, c_white, c_blue, 1);
draw_cool_text(x + xoff, y + yoff + sep * 2, "Kills: " + string(global.kills), c_black, c_white, c_blue, 1);
draw_cool_text(x + xoff, y + yoff + sep * 3, "Crocomire Battle Time: " + string(ctext), c_black, c_white, c_gray, 1);
draw_cool_text(x + xoff, y + yoff + sep * 4, "Kraid Battle Time: " + string(ktext), c_black, c_white, c_gray, 1);
draw_cool_text(x + xoff, y + yoff + sep * 5, "Ridley Battle Time: " + string(rtext), c_black, c_white, c_gray, 1);
draw_cool_text(x + xoff, y + yoff + sep * 6, "Total Time: " + string(timetext), c_black, c_white, c_yellow, 1);
draw_cool_text(x + 4, y + 96, "See you next mission", c_black, c_white, c_green, 1);

