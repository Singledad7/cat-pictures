if (room == rm_subscreen) {
    if(global.gamemode == 3 || global.gamemode == 4 || global.gamemode == 5) {
        draw_cool_text(50, 60 - 8, get_text("Misc", "ExtrasMode") + ": " + modeindex, c_black, c_gray, c_dkgray, 1)
        draw_cool_text(50, 73 - 8, get_text("Misc", "ExtrasSeed") + ": " + string(oControl.seed), c_black, c_gray, c_dkgray, 1);
    }
}

