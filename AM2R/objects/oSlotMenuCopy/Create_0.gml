image_speed = 0.2;
targetslot = 0;
if (global.saveslot == 0) targetslot = 1;
active = 0;
alarm[0] = 5;
file[0] = "save1";
file[1] = "save2";
file[2] = "save3";
dialogy[0] = 60;
dialogy[1] = 104;
dialogy[2] = 148;

if (oControl.mod_insanitymode) {
    mycolor = make_color_rgb(187, 3, 3);
    myslot = sSaveSlotCopyInsanity;
} else {
    mycolor = make_color_rgb(3, 187, 25);
    myslot = sSaveSlotCopy;
}

