if (myhealth > 0 && state > 0) {
    if (!canbehit) {
        with (other) event_user(1);
    } else {
        with (other) event_user(0);
        myhealth -= 5 * (1 + other.smissile * 2);
        event_user(0);
    }
}

