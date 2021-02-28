if (canbehit) {
    if (stun == 0) event_user(0);
    with (other) {
        event_user(0);
        instance_destroy();
    }
}

