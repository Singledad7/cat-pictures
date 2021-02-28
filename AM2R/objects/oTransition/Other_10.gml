if (instance_exists(oCharacter)) {
    oCharacter.x = -100;
    oCharacter.y = -100;
}

// widescreen toggle on transition load
if ((global.widescreen_enabled != oControl.widescreen) && (oControl.widescreen_switch == true)) {
    with (oControl) {
        widescreen = global.widescreen_enabled;
        if (widescreen) {
            widescreen_space = 106;
        }
        if (global.opfullscreen == 0) {
            set_window_scale(window_get_height()/240);
            window_set_position(window_get_x()+((53-(global.widescreen_enabled*106))*(window_get_height()/240)),window_get_y());
        }
    }
    oControl.widescreen_switch = false;
    //view_visible[2] = false;
}

room_goto(global.targetroom);

