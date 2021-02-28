writelog("Loading Room " + string(room));
if (room != rm_transition) {
    if (global.ingame == 1 && instance_number(oCharacter) == 0) {
        player = instance_create(global.save_x, global.save_y, oCharacter);
        with (player) juststarted = 100;
        mus_intro_fanfare();
    }
    if (global.ingame == 1) {
        room_persistent = false;
        if (quitgame) {
            quitgame = 0;
            remove_persistent_objects();
            sfx_stop_all();
            global.ingame = 0;
            global.darkness = 0;
            if (reloadgame == 0) {
                room_change(titleroom, 1); //room_goto(titleroom);
            } else {
                global.newgame = 0;
                room_goto(rm_loading);
            }
            exit;
        }
        ApplyLightPreset();
        Unmute_Loops();
        if (instance_exists(oCharacter)) with (oCharacter) persistent = true;
        if (instance_exists(oCamera)) with (oCamera) persistent = true;
        if (instance_exists(oNotification)) with (oNotification) persistent = true;
        if (instance_exists(oScanMonster)) with (oScanMonster) persistent = true;
    }
} // if (room != rm_transition)
malpha = 1;
fadedone = 0;
if (room == rm_transition) fadedone = 1;
if (room == titleroom && instance_exists(oPressStart)) {
    global.gamestarted = 0;
    if (os_type == os_android) os_powersave_enable(true);
}

