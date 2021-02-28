/// @description  Missile/Beam damage
if (state != 100) {
    if (instance_exists(oErisHead)) {
        with (oErisHead) {
            hp -= 2;
            stun = 2;
            event_user(2);
        }
    }
    event_user(5); // Bubbles!
    shaking = 8;
}

