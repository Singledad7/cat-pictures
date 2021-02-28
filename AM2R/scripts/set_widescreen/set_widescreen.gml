/// @description  set_widescreen();
//if(widescreen) {
    //widescreen_space = floor(window_get_width()*240/window_get_height()) - 320; // Get space to set on widescreen?
    
    //if(widescreen_space % 2 == 1) widescreen_space += 1; // fix for odd numbered scales?
    
    // for testing we're just gonna ignore all that lol
    //widescreen_space = 426 - 320;
    
    __view_set( e__VW.Visible, 1, true ); // widescreen view
    // So this creates an extra view that displays over view 0
    
    __view_set( e__VW.WView, 1, __view_get( e__VW.WView, 0 )+widescreen_space ); // Take view, expand to widescreen res
    __view_set( e__VW.HView, 1, __view_get( e__VW.HView, 0 ) ); // no duh
    
    __view_set( e__VW.WPort, 1, __view_get( e__VW.WPort, 0 )-widescreen_space ); // e x p a n d?
    __view_set( e__VW.HPort, 1, __view_get( e__VW.HPort, 0 ) ); // no duh
    
    __view_set( e__VW.XView, 1, __view_get( e__VW.XView, 0 )-widescreen_space/2 ); // move backwards to center everything
    __view_set( e__VW.YView, 1, __view_get( e__VW.YView, 0 ) ); // no duh
    
    //view_xport[1] = view_xport[0]; // this should fix the quakes?
    //view_yport[1] = view_yport[0];
    
    if (!surface_exists(widescreen_surface)) {
       widescreen_surface = surface_create(__view_get( e__VW.WView, 1 ), __view_get( e__VW.HView, 1 ));
    }
    
    __view_set( e__VW.SurfaceID, 1, widescreen_surface );
//}
