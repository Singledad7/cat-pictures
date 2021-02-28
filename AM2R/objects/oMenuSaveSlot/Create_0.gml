hilight = 1;
active = 0;
saveexists = 0;
saveroom = 0;
targety = y;
y = 0;
alarm[0] = 1;

modeindex = 0;

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

//mycolordark = make_color_rgb(74, 0, 0);

