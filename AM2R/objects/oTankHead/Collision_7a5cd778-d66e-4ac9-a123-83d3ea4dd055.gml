if (damaged == 0) {
    myhealth -= 10 * (1 + other.smissile * 2);
    event_user(0);
    with (other) event_user(0);
} else {
    with (other) event_user(1);
}

