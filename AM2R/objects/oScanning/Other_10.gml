if (global.ophudshowlogmsg) {
    global.gotolog = lognumber;
    notif = instance_create(0, 0, oNotification);
    notif.text2 = get_text("ScanEvents", "NewLog_Text");
    notif.btn1_name = "Start";
    //notif.btn1_name = get_text("Buttons", "Start");
    notif.btn2_name = "";
    notif.alarm[0] = 360;
}
if (mode == 0) {
    global.log[lognumber] = 1;
    global.newlog[lognumber] = 1;
    if (global.ophudshowlogmsg) notif.text1 = get_text("ScanEvents", "NewLog");
    
    // New header, only on regular scan
    switch lognumber {
        case 21: {
            var intro = instance_create(oCharacter.x, oCharacter.y, oAreaIntro);
            intro.sprite_index = sIntro_A1;
            break;
        }
        case 23: 
        {
            var intro = instance_create(oCharacter.x, oCharacter.y, oAreaIntro);
            intro.sprite_index = sIntro_A2;
            break;
        }
        case 24: 
        {
            var intro = instance_create(oCharacter.x, oCharacter.y, oAreaIntro);
            intro.sprite_index = sIntro_A3;
            break;
        }
        case 26: 
        {
            var intro = instance_create(oCharacter.x, oCharacter.y, oAreaIntro);
            intro.sprite_index = sIntro_A4;
            break;
        }
        case 28: 
        {
            var intro = instance_create(oCharacter.x, oCharacter.y, oAreaIntro);
            intro.sprite_index = sIntro_A5;
            break;
        }
        case 29: 
        {
            var intro = instance_create(oCharacter.x, oCharacter.y, oAreaIntro);
            intro.sprite_index = sIntro_A7;
            break;
        }
        case 6: 
        {
            var intro = instance_create(oCharacter.x, oCharacter.y, oAreaIntro);
            intro.sprite_index = sIntro_A8;
            break;
        }
    }

}
if (mode == 1) {
    global.log[lognumber] = 2;
    global.newlog[lognumber] = 1;
    if (global.ophudshowlogmsg) notif.text1 = get_text("ScanEvents", "UpdateLog");
}

/*if (instance_exists(oAreaIntro)) {
    with (oAreaIntro) {
        state = 1;
    }
}*/

instance_destroy();

/* */
/*  */
