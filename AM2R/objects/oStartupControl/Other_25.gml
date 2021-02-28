/// @description Spawn game objects.

writelog("Preparing to launch game...");

with (instance_create(16, 16, oControl)) {
    event_perform(ev_other, ev_game_start);
    event_perform(ev_other, ev_room_start);
    surface_free(widescreen_surface);
}

with (instance_create(16, 32, oMusicV2)) {
    event_perform(ev_other, ev_room_start);
}

