/// @description  Effects on missile, explosion does actual damage
if ((inrange) && (!oErisHead.boosting) && (!flashing) && (!tail)) {
    with (other) {
        event_user(0); // Run explosion
    }
} else if (!tail) {
    with (other) {
        event_user(1); // Bounce
    }
}

