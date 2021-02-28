if (myhealth > 0) {
    if (other.invincible == 0) damagedealt += damage;
    if (false) damage_player(damage, hpush, vpush, 0, 0);//testing 2x damage
    else damage_player(damage, hpush, vpush, 0, 0);
    if (chasing && hitandrun) {
        xVel = 0;
        yVel = 0;
        event_user(1);
    }
}

