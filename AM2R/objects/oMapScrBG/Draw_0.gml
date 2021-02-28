alert("This is obsolete");
draw_background(global.qbg, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
if (!fadeout) {
    draw_background_ext(global.qbg, __view_get( e__VW.XView, 0 ) + 1, __view_get( e__VW.YView, 0 ), 1, 1, 0, -1, 0.5);
    draw_background_ext(global.qbg, __view_get( e__VW.XView, 0 ) - 1, __view_get( e__VW.YView, 0 ), 1, 1, 0, -1, 0.5);
    draw_background_ext(global.qbg, __view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ), 1, 1, 0, -1, 0.2);
    draw_background_ext(global.qbg, __view_get( e__VW.XView, 0 ) - 2, __view_get( e__VW.YView, 0 ), 1, 1, 0, -1, 0.2);
}
if (fadeout) {
    draw_background_ext(global.qbg, __view_get( e__VW.XView, 0 ) + 1, __view_get( e__VW.YView, 0 ), 1, 1, 0, -1, 0.5 * ealpha);
    draw_background_ext(global.qbg, __view_get( e__VW.XView, 0 ) - 1, __view_get( e__VW.YView, 0 ), 1, 1, 0, -1, 0.5 * ealpha);
    draw_background_ext(global.qbg, __view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ), 1, 1, 0, -1, 0.2 * ealpha);
    draw_background_ext(global.qbg, __view_get( e__VW.XView, 0 ) - 2, __view_get( e__VW.YView, 0 ), 1, 1, 0, -1, 0.2 * ealpha);
}
draw_set_color(c_black);
if (!fadeout) draw_set_alpha(0.8);
if (fadeout) draw_set_alpha(0.8 * ealpha);
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 330, __view_get( e__VW.YView, 0 ) + 250, false);

