if (fadeout == 0) {
    if(!visible) alarm[0]++; //added
    if (offset > 0) offset -= 1;
} else if (offset < 30) {
    offset += 1;
} else {
    instance_destroy();
    global.gotolog = -1;
}

