/// @description  Health drops

// If Fusion, run regular pickup spawn routines.
if(oControl.mod_fusion) {
    timer = 0;
    rotspeed = 0;
    myspeed = 0;
    offset = 0;
    moveratio = 0;
    movesteps = 0;
    spawn_rnd_pickup(100);
} else { // Otherwise, run Monster pickup spawn routines.
    monster_spawn_powerups(x, y, irandom(4), irandom(3));
}

