if ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) >= global.waterlevel) {
    yi = 0;
    repeat (amt_y) {
        xi = 0;
        repeat (amt_x + 1) {
            draw_background(BG, x + background_get_width(BG) * xi + floor(__view_get( e__VW.XView, 0 ) * xratio + xoff), y + background_get_height(BG) * yi + floor(__view_get( e__VW.YView, 0 ) * yratio + yoff));
            xi += 1;
        }
        yi += 1;
    }
}

