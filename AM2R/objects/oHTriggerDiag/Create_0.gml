event_inherited();
myid = 0;
if (global.hint[myid] == 1) instance_destroy();
//text1 = "Diagonal Aiming";
text1 = get_text("InGameHints", "DiagonalAiming")
//text2 = "Hold | to aim diagonally up";
text2 = get_text("InGameHints", "DiagonalAiming_Text")
btn1_name = "Aim";
//btn1_name = get_text("Buttons", "Aim");
duration = 400;

