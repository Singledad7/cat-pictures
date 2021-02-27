/// save_modifiers();

// Only writing necessary stuff from the Gameplay Menu here

ini_open_from_string(oStartupControl.configsav);

ini_write_real("RandomizerSeed", "UseManualSeed", oControl.mod_usemanualseed);
ini_write_real("RandomizerSeed", "Seed", oControl.mod_seed);

oStartupControl.configsav = ini_close();
