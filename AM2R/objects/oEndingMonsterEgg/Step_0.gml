if (sprite_index == sMonsterEggCrush && image_index == 9) {
    PlaySoundMono(sndEggCrush);
}

if (sprite_index == sMonsterEggCrush && image_index == 12) {
    PlaySoundMono(sndHornoadLand);
}

if (sprite_index == sMonsterEggCrush && image_index >= 23) {
    sprite_index = sMonsterEggIdle;
    image_index = 0;
    image_speed = 7/60;
}

if (xBite == 1) {
    sprite_index = sMonsterEggBite;
    image_speed = 6/60;
    image_index = 0;
    xBite = 0;
}

if (sprite_index == sMonsterEggBite && image_index >= 5) {
    sprite_index = sMonsterEggIdle;
    image_index = 0;
    image_speed = 7/60;
}

if (xTwitch == 1) {
    sprite_index = sMonsterEggTwitch;
    image_speed = 7/60;
    image_index = 0;
    xTwitch = 0;
}

if (sprite_index == sMonsterEggTwitch && image_index >= 8) {
    sprite_index = sMonsterEggIdle;
    image_index = 0;
    image_speed = 7/60;
}


