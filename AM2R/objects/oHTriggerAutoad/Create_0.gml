event_inherited();
myid = 4;
if (global.hint[myid] == 1) instance_destroy();
//text1 = "Autoad";
text1 = get_text("InGameHints", "Autoad");
//text2 = "Hold | - Jump / | - Grab";
text2 = get_text("InGameHints", "Autoad_Text");
btn1_name = "Jump";
//btn1_name = get_text("Buttons", "Jump");
btn2_name = "Fire";
//btn2_name = get_text("Buttons", "Fire");
duration = 350;

