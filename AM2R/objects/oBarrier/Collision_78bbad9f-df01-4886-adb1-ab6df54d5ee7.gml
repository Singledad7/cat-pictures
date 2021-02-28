if (frozen == 0) {
    wiggle = 45;
    with (other) event_user(1);
} else {
    event_user(0);
    with (other) event_user(0);
}

