if (!active) {
    active = true;
    image_index = 0;
    
    if(instance_exists(oNotification)) with(oNotification) fadeout = 1;
}

alarm[0] = 2;

