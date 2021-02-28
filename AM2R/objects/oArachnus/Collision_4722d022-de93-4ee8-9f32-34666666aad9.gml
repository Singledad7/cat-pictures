if (!canbehit) {
    with (other) event_user(1);
} else {
    with (other) event_user(0);
    if (other.smissile == 0) {
        angry += 7;
    } else angry = 100;
    event_user(0);
}

