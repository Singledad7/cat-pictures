if (enabled) {
    myhealth -= 1;
    event_user(0);
    with (other) {
        event_user(0);
        instance_destroy();
    }
}

