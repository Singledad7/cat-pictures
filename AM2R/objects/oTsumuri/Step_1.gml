enemy_active_check(20);
if (active == 1) instance_activate_region(x - 16, y - 16, 32, 32, 1);


if (room_width <= 320) { // just in case we have flush rooms, we don't want them crawling outside
    if ((x < (-(oControl.widescreen_space/2) - 8)) || (x > (room_width + (oControl.widescreen_space/2) + 8)) || (y < 0) || (y > room_height)) {
        instance_destroy();
    }
}

