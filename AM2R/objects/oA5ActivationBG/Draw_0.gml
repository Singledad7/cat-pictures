draw_background_ext(bgA5Activation, floor(__view_get( e__VW.XView, 0 ) * xratio + xoffset - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, 1, 0, -1, 1);
draw_background_ext(bgA5Activation, floor(__view_get( e__VW.XView, 0 ) * xratio + xoffset - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, -1, 0, -1, 1);
draw_background_ext(bgA5Activation, floor(__view_get( e__VW.XView, 0 ) * xratio - xoffset - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, 1, 0, -1, 1);
draw_background_ext(bgA5Activation, floor(__view_get( e__VW.XView, 0 ) * xratio - xoffset - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, -1, 0, -1, 1);
draw_background_ext(bgA5Activation, floor(__view_get( e__VW.XView, 0 ) * xratio + xoffset * 2 - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, 1, 0, -1, 1);
draw_background_ext(bgA5Activation, floor(__view_get( e__VW.XView, 0 ) * xratio + xoffset * 2 - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, -1, 0, -1, 1);
draw_background_ext(bgA5Activation, floor(__view_get( e__VW.XView, 0 ) * xratio - xoffset * 2 - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, 1, 0, -1, 1);
draw_background_ext(bgA5Activation, floor(__view_get( e__VW.XView, 0 ) * xratio - xoffset * 2 - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, -1, 0, -1, 1);
if (global.event[250] > 0) {
    draw_set_blend_mode(bm_add);
    draw_background_ext(bgA5ActivationLights, floor(__view_get( e__VW.XView, 0 ) * xratio + xoffset - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, 1, 0, -1, light_alpha);
    draw_background_ext(bgA5ActivationLights, floor(__view_get( e__VW.XView, 0 ) * xratio + xoffset - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, -1, 0, -1, light_alpha);
    draw_background_ext(bgA5ActivationLights, floor(__view_get( e__VW.XView, 0 ) * xratio - xoffset - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, 1, 0, -1, light_alpha);
    draw_background_ext(bgA5ActivationLights, floor(__view_get( e__VW.XView, 0 ) * xratio - xoffset - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, -1, 0, -1, light_alpha);
    draw_background_ext(bgA5ActivationLights, floor(__view_get( e__VW.XView, 0 ) * xratio + xoffset * 2 - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, 1, 0, -1, light_alpha);
    draw_background_ext(bgA5ActivationLights, floor(__view_get( e__VW.XView, 0 ) * xratio + xoffset * 2 - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, -1, 0, -1, light_alpha);
    draw_background_ext(bgA5ActivationLights, floor(__view_get( e__VW.XView, 0 ) * xratio - xoffset * 2 - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, 1, 0, -1, light_alpha);
    draw_background_ext(bgA5ActivationLights, floor(__view_get( e__VW.XView, 0 ) * xratio - xoffset * 2 - __view_get( e__VW.WView, 0 ) / 2 + 400), floor(__view_get( e__VW.YView, 0 ) * yratio + yoffset), 1, -1, 0, -1, light_alpha);
    draw_set_blend_mode(bm_normal);
}

