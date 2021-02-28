debug = 0;
global.ingame = 0;
global.transitiontype = 0;
global.transitionx = 0;
global.transitiony = 0;
load_gameoptions();
writelog("Options Loaded");
init_stats();

randomize_zeta_heads();
randomize_omega_types();

global.mod_fusion_unlocked = 0;
global.mod_gamebeaten = 0;


// Load resource mods.
load_resources();


if (nik_file_exists("data.sav")) {
    load_stats();
    if (nik_file_exists("extras.sav")) {
        load_stats2();
    }
    else {
        save_stats2();
        load_stats2();
    }
}


global.shaders_compiled = false;
if (shaders_are_supported()) {
    if (shader_is_compiled(shGameBoy) && shader_is_compiled(shPaletteSwap)) {
      global.shaders_compiled = true;
    }
}

// DEBUG

//global.mod_gamebeaten = false;

/// Input3D Code
/*
input_init();
inputHeld[ds_list_size(inputList)-1] = 0;
inputPressed[ds_list_size(inputList)-1] = 0;
inputReleased[ds_list_size(inputList)-1] = 0;
input[ds_list_size(inputList)-1] = 1;

/* */
/*  */
