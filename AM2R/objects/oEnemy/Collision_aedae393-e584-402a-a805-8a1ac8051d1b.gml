if (canbehit) {
    if (hitbeam && other.dohit) {
        event_user(0);
        with (other) event_user(0);
    }
    if (!hitbeam) with (other) event_user(1);
    if (other.pbeam == 0) with (other) instance_destroy();
}

