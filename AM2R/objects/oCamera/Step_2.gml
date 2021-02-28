/// @description  Camera restrictions
if (oControl.widescreen) {
    if ((oControl.widescreen_space + 320) <= room_width) { // widescreen rooms prevent black bars
        x = clamp(x, limit, room_width-limit);
    }
    else { // single-wide rooms
        x = floor(room_width/2);
    }
}

