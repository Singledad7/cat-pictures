/// @description  Activation/deactivation
if(activation_code) {
    instance_activate_region(__view_get( e__VW.XView, 0 ) - 300, __view_get( e__VW.YView, 0 ) - 300, __view_get( e__VW.WView, 0 ) + 600, __view_get( e__VW.HView, 0 ) + 600, 1);
    if (global.objdeactivate) instance_deactivate_object(oSolid);
    instance_activate_object(oMovingSolid);
    if (global.objdeactivate) instance_deactivate_object(oEnemy);
    instance_deactivate_object(oGotoRoom);
    instance_activate_region(__view_get( e__VW.XView, 0 ) - 200, __view_get( e__VW.YView, 0 ) - 200, __view_get( e__VW.WView, 0 ) + 400, __view_get( e__VW.HView, 0 ) + 400, 1);
    instance_activate_region(x - 64, y - 64, 128, 128, 1);
    instance_activate_object(oGravitt);
    
    activation_code = false;
}

