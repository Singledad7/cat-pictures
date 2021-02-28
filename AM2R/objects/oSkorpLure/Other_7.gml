if ((sprite_index == skorp_get_lure(sSkorpLureV)) || (sprite_index == skorp_get_lure(sSkorpLureUpV))) {
    visible = 0;
} else if (sprite_index == skorp_get_lure(sSkorpLureR)) {
    sprite_index = skorp_get_lure(sSkorpLure);
} else if (sprite_index == skorp_get_lure(sSkorpLureUpR)) {
    sprite_index = skorp_get_lure(sSkorpLureUp);
}

