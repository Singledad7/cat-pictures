//room_change(titleroom, 1); //room_goto(titleroom);

if(round((global.itemstaken / 88) * 100) < 100) {
    room_change(titleroom, 1); //room_goto(titleroom);
} else {
    room_goto(rm_secretEnding);
}

