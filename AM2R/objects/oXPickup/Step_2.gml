if(state == 6) { //Shrink during pickup
    if(floor(statetime) == 0) {
        image_xscale = 1;
        image_xscale = 1;
        
        if(xvariant == 1) {
            image_xscale = 0.8;
            image_xscale = 0.8;
        }
    }
    
    x = oCharacter.x + relativeX;
    y = (oCharacter.y-oCharacter.sprite_height/2) + relativeY;
    
    relativeX = lerp(relativeX, 0, 0.1);
    relativeY = lerp(relativeY, 0, 0.1);
    
    if(image_xscale > 0) {
        image_xscale -= 0.0225;
        image_yscale -= 0.0225;
    }
    
    if(image_xscale <= 0) instance_destroy();
}

//inview widescreen fix
if ((x < (__view_get( e__VW.XView, 0 ) - 16 - (oControl.widescreen_space/2))) || (x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 16 + (oControl.widescreen_space/2))) || (y < __view_get( e__VW.YView, 0 ) - 16) || (y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 16)) {
    inview = false;
}

