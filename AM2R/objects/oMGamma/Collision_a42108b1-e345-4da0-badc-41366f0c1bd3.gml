if (canbehit) {
    if (state != 7) {
        event_user(0);
        with (other) event_user(0);
    } else with (other) event_user(1);
}

