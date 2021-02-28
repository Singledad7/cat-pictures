/// @description  Take Missile damage
if ((inrange) && (!oErisHead.boosting) && (!tail)) { // Safety check
    if (state == 1) { // If frozen, shatter
        event_user(1);
    } else if ((state == 2) && (!flashing) && (other.erisDmg == 1)) { // Else if open, take damage
        if (other.smissile) { // Damage mod for Supers
            event_user(4);
        } else {
            event_user(3);
        }
        with (other) { // Fix for double hits
            erisDmg = 0;
        }
    }
}

