if (collision_rectangle(x - 8, y, x + 8, y + 64, oCharacter, true, true)) event_user(2);
if (event > 0) {
    if (global.event[event] > 0) {
        lock = 0;
        stayopen = 0;
    }
}

