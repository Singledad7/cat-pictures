if (open == 0) {
    if (lock == 0) {
        event_user(1);
        with (other) if (!wbeam) {
            event_user(0);
            instance_destroy();
        }
    } else with (other) if (!wbeam) {
        event_user(1);
        instance_destroy();
    }
}

