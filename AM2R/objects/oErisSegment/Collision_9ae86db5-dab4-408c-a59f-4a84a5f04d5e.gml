/// @description  Take PB damage
if ((inrange) && (!oErisHead.boosting) && (!tail)) { // Safety check
    if (state == 1) { // If frozen, shatter
        event_user(1); 
    } else if ((state == 2) && (!flashing)) { // Else if open, take damage
        event_user(2); 
    }
}

