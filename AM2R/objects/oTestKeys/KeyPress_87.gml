if (!instance_exists(oCharacter)) {
    room_goto(rm_secretEnding);
    
    /*mus_stop_all();
    mus_play_once(musCredits);
    room_goto(rm_credits);*/
}


if (instance_exists(oCharacter) && (keyboard_check(vk_shift))) {
    //room_goto(rm_a8h01);
    msg = get_string("WARP TO", "rm_a0h01");
    var rm = asset_get_index(msg);
    if (room_exists(rm)) {
        room_goto(rm);
    } else {
        popup_text("Room index does not exist!");
    }
}

/*if (keyboard_check(vk_shift)) {
    msg = get_integer_async("WARP TO", 0);
} else {
    //global.targetx = 160;
    //global.targety = 120;
    global.targetx = 64;
    global.targety = 64;
    //targetroom = asset_get_index("rm_a7b10");
    targetroom = asset_get_index("a5b03a");
    
    if (global.ingame) room_goto(targetroom);
}

/*


if (keyboard_check(vk_shift)) {
    msg = get_integer_async("WARP TO", 0);
} else {
    //global.targetx = 160;
    //global.targety = 120;
    global.targetx = 900;
    global.targety = 150;
    //targetroom = asset_get_index("rm_a7b10");
    targetroom = asset_get_index("rm_a7c01");
    
    if (global.ingame) room_goto(targetroom);
}


/* */
/*  */
