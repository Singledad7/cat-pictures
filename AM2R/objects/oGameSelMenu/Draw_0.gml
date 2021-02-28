

if (active) {
    draw_txt_1button(__view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ) + 225, tip1text, 1, "Menu1", image_alpha);
} else {
    draw_txt_1button(__view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ) + 212, tip1text, 1, "Menu1", image_alpha);
    draw_txt_1button(__view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ) + 225, tip2text, 1, "Menu2", image_alpha);
}


