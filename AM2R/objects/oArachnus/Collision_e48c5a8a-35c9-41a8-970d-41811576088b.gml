if (!canbehit) {
    with (other) {
        event_user(1);
        instance_destroy();
    }
} else {
    with (other) {
        event_user(0);
        instance_destroy();
    }
    angry += 2;
    if (other.chargebeam) angry += 8;
    event_user(0);
}

