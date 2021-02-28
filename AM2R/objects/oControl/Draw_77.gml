application_surface_draw_enable(0);
draw_clear(c_black);

if (shader_on && global.shaders_compiled) set_8bit_shader();
/// Draw game surface
if(widescreen) {
    // used view_*port[0] instead of display* previously because Wanderer was supporting all ratios
    if (surface_exists(widescreen_surface)) draw_surface_ext(widescreen_surface, displayx+xShake, displayy+yShake, display_scale, display_scale, 0, c_white, 1);
} else {
    draw_game_surface(displayx, displayy, display_scale);
}



if (shader_on && global.shaders_compiled) shader_reset();
event_user(5);

