// Widescreen limit determination
switch (room) {
    case rm_a3a20: // Zig-zag room
    case rm_a7c01: // Egg room
    case rm_a6b13: // Nest vertical shaft
    case rm_a2a07: limit = 160; break; // Varia
    case rm_a3a01: { // Torizo
        if (global.event[152] > 0) {
                limit = floor(oControl.widescreen_space/2)+160; break; // after torizo
            } else {
                targetwidth = 320; // before torizo
            }
        limit = 160;
        break;
    }
    default: limit = floor(oControl.widescreen_space/2)+160; break;
}

// regular code stuffs
if (global.transitiontype == 1) {
    x = global.camstartx;
    y = global.camstarty;
    lockx = 0;
    locky = 0;
    focus = 0;
    ratiox = 4;
    ratioy = 4;
}

if ((global.transitiontype == 0) && (instance_exists(oWarpPipeTrigger))) { // warp pipe fix
    x = global.camstartx;
    y = global.camstarty;
}
roomstart = 1;

