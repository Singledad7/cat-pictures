if (canbehit && state != 100) {
    if (other.smissile == 0) {
        event_user(1);
    } else event_user(2);
    with (other) event_user(0);
} else with (other) event_user(1);

