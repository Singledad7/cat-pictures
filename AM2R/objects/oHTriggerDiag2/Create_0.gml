event_inherited();
myid = 2;
if (global.hint[myid] == 1) instance_destroy();
//text1 = "Aiming Downwards";
text1 = get_text("InGameHints", "AimingDownwards");
if (global.opaimstyle == 0) {
    //text2 = "Tap | while holding | to aim diagonally down";
    text2 = get_text("InGameHints", "AimingDownwards_Text1");
    btn1_name = "Down";
    //btn1_name = get_text("Buttons", "Down");
    btn2_name = "Aim";
    //btn2_name = get_text("Buttons", "Aim");
    
}
if (global.opaimstyle == 1) {
    //text2 = "Hold | to aim diagonally down";
    text2 = get_text("InGameHints", "AimingDownwards_Text2");
    btn1_name = "Aim2";
    //btn1_name = get_text("Buttons", "Aim2");
}
duration = 280;

