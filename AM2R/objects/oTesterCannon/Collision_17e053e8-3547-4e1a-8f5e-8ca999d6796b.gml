if (damaged == 0 && canbehit) {
    with (other) event_user(0);
    myhealth -= 5 * (1 + other.smissile * 2);
    event_user(1);
}

