/// @description  Take Beam damage
if ((inrange) && (!flashing) && (!oErisHead.boosting) && (!tail)) { // Safety check
    if ((state == 0) || (state == 1)) { // Shell up
        if (other.ibeam) { // Freeze
            if (!other.pbeam) { // Buff non-plasma damage
                hp -= 4;
            } else {
                hp -= 2; // Nerf plasma damage
            }
            if (other.chargebeam) {
                hp = 0; // Instantly freeze if other is charge beam
            }
            with (other) {
                event_user(0); // Do thing to the beam
            }
            event_user(0); // Take damage, freeze self if necessary
        } else with (other) {
            event_user(1); // Bounce hits if not ice
        }
        if (!other.pbeam) {
            with (other) {
                instance_destroy(); // Destroy hits if not Plasma
            }
        }
    } else if (state == 2) { // Second phase damage
        with (other) { // Beam handling
            event_user(0);
            if (!pbeam) instance_destroy();
        }
        event_user(3); // Take damage
    }
} else if (!tail) {
    with (other) { // If flashing, boosting, OOB, or tail ignore hits
        if (pbeam) {
            event_user(1);
        } else {
            event_user(0);
            instance_destroy();
        }
    }
}

