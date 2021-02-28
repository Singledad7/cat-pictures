if (!instance_exists(oTankShield)) {
    if (other.smissile == 0) {
        myhealth -= 10; // * (1 + other.smissile * 2);
    } else if (other.smissile == 1) {
        myhealth -= 20;
    } else {
        
    }
    event_user(0);
    with (other) event_user(0);
}

