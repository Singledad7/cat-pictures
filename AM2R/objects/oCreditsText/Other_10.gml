/// @description  Reset GUI, determine exit condition

if (global.creditsmenuopt == 0) {
    room_goto(rm_score);
} else {
    if (os_type == os_android) os_powersave_enable(true);
    global.creditsmenuopt = 0;
    room_goto(titleroom);
}

