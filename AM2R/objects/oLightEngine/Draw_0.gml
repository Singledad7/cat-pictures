draw_set_blend_mode(bm_subtract);
if (surface_exists(surf)) {
    draw_surface_ext(surf, __view_get( e__VW.XView, 0 ) - (53*oControl.widescreen), __view_get( e__VW.YView, 0 ), 1, 1, 0, make_color_hsv(0, 0, image_alpha * 255), 1); // view[0] previously
} else {
    event_user(0);
    event_user(1);
}
draw_set_blend_mode(bm_normal);

