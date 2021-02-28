if (oControl.mod_insanitymode) {
    mycolor = make_color_rgb(187, 3, 3);
    myslotbg = bgSaveSlotInsanity;
    myslot = sSaveSlotInsanity;
    myslotb = sSaveSlotBInsanity;
    myslotc = sSaveSlotCopyInsanity;
} else {
    mycolor = make_color_rgb(3, 187, 25);
    myslotbg = bgSaveSlot;
    myslot = sSaveSlot;
    myslotb = sSaveSlotB;
    myslotc = sSaveSlotCopy;
}

if (oControl.mod_monstersextremecheck == 1) {
    meticon = bgGUIMetCountBG2ELM;
} else {
    meticon = bgGUIMetCountBG2;
}

