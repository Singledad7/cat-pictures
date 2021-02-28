if (active) {
    event_user(0);
    with (other) event_user(0);
    if (other.pbeam == 0) with (other) instance_destroy();
}

