if (collision_line(x, y - 2, x + 32, y - 2, oCharacter, false, true)) 
{
    //image_alpha = 0;
    image_index = sprite_get_number(sprite_index) - 1; 
    with (oControl) event_user(3);
    //alarm[0]=1;
}

