/// @description  Extra Game Modes

if(global.mod_fusion_unlocked == 0) {
    if(oControl.kUpPressed) {
        if(modes_code[io_code_modes] == vk_up) io_code_modes++;
        else io_code_modes = 0;
    }
    
    if(oControl.kDownPressed) {
        if(modes_code[io_code_modes] == vk_down) io_code_modes++;
        else io_code_modes = 0;
    }
    
    if(oControl.kLeftPressed) {
        if(modes_code[io_code_modes] == vk_left) io_code_modes++;
        else io_code_modes = 0;
    }
    
    if(oControl.kRightPressed) {
        if(modes_code[io_code_modes] == vk_right) io_code_modes++;
        else io_code_modes = 0;
    }
    
    if(oControl.kMenu1Pressed) {
        if(modes_code[io_code_modes] == vk_enter) io_code_modes++;
        else io_code_modes = 0;
    }
    
    if(oControl.kMenu2Pressed) {
        if(modes_code[io_code_modes] == vk_backspace) io_code_modes++;
        else io_code_modes = 0;
    }
    
    if(io_code_modes == array_length_1d(modes_code)) {
        sfx_play(sndXMorph1);
        oGameSelMenu.op[3].enabled = 1;
        global.mod_fusion_unlocked = 1;
        unlock_set(0);
        
        alarm[0] = 90;
        io_code_modes = 0;
    }
}

/// Early Baby Monster

if(global.mod_gamebeaten == 1) {
    if(oControl.kUpPressed) {
        if(monster_code[io_code_monster] == vk_up) io_code_monster++;
        else if(io_code_monster > 1) io_code_monster = 0;
    }
    
    if(oControl.kDownPressed) {
        if(monster_code[io_code_monster] == vk_down) io_code_monster++;
        else io_code_monster = 0;
    }
    
    if(oControl.kLeftPressed) {
        if(monster_code[io_code_monster] == vk_left) io_code_monster++;
        else io_code_monster = 0;
    }
    
    if(oControl.kRightPressed) {
        if(monster_code[io_code_monster] == vk_right) io_code_monster++;
        else io_code_monster = 0;
    }
    
    if(oControl.kMenu1Pressed) {
        if(monster_code[io_code_monster] == vk_enter) io_code_monster++;
        else io_code_monster = 0;
    }
    
    if(oControl.kMenu2Pressed) {
        if(monster_code[io_code_monster] == vk_backspace) io_code_monster++;
        else io_code_monster = 0;
    }
    
    if(io_code_monster == array_length_1d(monster_code)) {
        sfx_play(choose(sndHatchling,sndHatchling2,sndHatchling3,sndHatchling4));
        oControl.mod_earlybaby = !oControl.mod_earlybaby;
        save_gameoptions();
        io_code_monster = 0;
    }
}

