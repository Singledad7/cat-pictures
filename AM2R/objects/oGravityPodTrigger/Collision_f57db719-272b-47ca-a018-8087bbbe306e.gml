if (other.state == 11 || other.state == 10 || other.state == 23) {
    with (other) event_user(1);
    instance_destroy();
}

