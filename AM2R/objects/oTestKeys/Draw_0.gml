/*

draw_set_color(c_blue);
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(fontMenuTiny);
draw_set_color(c_white);
draw_set_alpha(0.6);
draw_set_halign(fa_right);
if (0) draw_text(view_xview[0] + view_wview[0] - 2, view_yview[0] + 232, "Ver. 1.1 T1");
if (0) draw_text(view_xview[0] + view_wview[0] - 2, view_yview[0] + 232, "WORK IN PROGRESS");
draw_set_alpha(1);
draw_set_halign(fa_left);
if (viewmode == 2) {
    with (oGotoRoom) {
        draw_set_color(c_yellow);
        draw_set_alpha(1);
        if (direction == 0 || direction == 180) draw_rectangle(x - 1, y, x, y - height, true);
        if (direction == 90 || direction == 270) draw_rectangle(x, y - 1, x + height, y, true);
        draw_set_alpha(1);
    }
    with (oCameraLimit) {
        draw_set_color(c_green);
        draw_set_alpha(0.5);
        draw_rectangle(x, y, x + areax, y + areay, true);
        draw_set_alpha(1);
    }
    with (oCameraWallR) {
        draw_set_color(c_red);
        draw_set_alpha(0.5);
        draw_rectangle(x, y, x + areax, y + areay, true);
        draw_set_alpha(1);
    }
    with (oCameraWallL) {
        draw_set_color(c_red);
        draw_set_alpha(0.5);
        draw_rectangle(x, y, x + areax, y + areay, true);
        draw_set_alpha(1);
    }
    with (oCameraWallD) {
        draw_set_color(c_red);
        draw_set_alpha(0.5);
        draw_rectangle(x, y, x + areax, y + areay, true);
        draw_set_alpha(1);
    }
    with (oEnemy) {
        draw_set_font(fontMenuTiny);
        draw_text_shadow(x - 8, y - 8, "HP " + string(myhealth));
        draw_text_shadow(x - 8, y - 16, "DMG " + string(damage));
    }
    with (oBeam) {
        draw_set_font(fontMenuTiny);
        draw_text_shadow(x - 8, y - 8, "DMG " + string(damage));
    }
    with (oCharacter) {
        draw_sprite(mask_index, -1, x, y);
        draw_set_color(c_red);
        draw_rectangle(oCharacter.x + oCharacter.collisionBoundsOffsetLeftX, oCharacter.y + oCharacter.collisionBoundsOffsetTopY, oCharacter.x + oCharacter.collisionBoundsOffsetRightX, oCharacter.y + oCharacter.collisionBoundsOffsetBottomY, true);
        draw_set_color(c_white);
        draw_point(oCharacter.x, oCharacter.y);
    }
} // if (viewmode == 2)

/* */
/*  */
