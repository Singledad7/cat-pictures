/* no clue why this is borked but it's supposed to drag the segment to meet the one in front of it
        var distNext = point_distance(x+lengthdir_x(sprite_width,direction), y+lengthdir_y(sprite_height,direction), oEris.mybody[order+1].x, oEris.mybody[order+1].y);
        
        if (oEris.boosting && (distNext > 1) && order < 13) {
            var dirNext = point_direction(x, y, oEris.mybody[order+1].x, oEris.mybody[order+1].y);
            x += lengthdir_x(distNext, dirNext);
            y += lengthdir_y(distNext, dirNext);
        } /*else if (distNext < 1) {
            var dirNext = point_direction(x, y, oEris.mybody[order+1].x, oEris.mybody[order+1].y);
            x += lengthdir_x(distNext, dirNext+180);
            y += lengthdir_y(distNext, dirNext+180);
        }

/* */
/*  */
