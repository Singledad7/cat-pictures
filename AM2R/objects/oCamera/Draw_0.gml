if (oControl.debug > 0) {
    draw_set_alpha(1);
    draw_set_font(fontMenuSmall);
    draw_set_color(c_white);
    draw_point(x, y);
    draw_text_shadow(x + 4, y - 48, "Focus: " + string(focus));
    draw_text_shadow(x + 4, y - 32, "Target X: " + string(targetx));
    draw_text_shadow(x + 4, y - 24, "Target Y: " + string(targety));
    draw_text_shadow(x + 4, y - 16, "Snap X: " + string(snapx));
    draw_text_shadow(x + 4, y - 8, "Snap Y: " + string(snapy));
    draw_text_shadow(x + 4, y, "Lock X: " + string(lockx));
    draw_text_shadow(x + 4, y + 8, "Lock Y: " + string(locky));
    draw_text_shadow(x + 4, y + 16, "X: " + string(x));
    draw_text_shadow(x + 4, y + 24, "Y: " + string(y));
    draw_text_shadow(x + 4, y + 32, "Ratio X: " + string(ratiox));
    draw_text_shadow(x + 4, y + 48, "Ratio Y: " + string(ratioy));
}

