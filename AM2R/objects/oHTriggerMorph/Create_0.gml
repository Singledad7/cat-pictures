event_inherited();
myid = 1;
if (global.hint[myid] == 1) instance_destroy();
//text1 = "Morph Ball";
text1 = get_text("InGameHints", "MorphBall")
//text2 = "Tap | while crouching to Morph into a ball";
text2 = get_text("InGameHints", "MorphBall_Text")
btn1_name = "Down";
//btn1_name = get_text("Buttons", "Down");
duration = 300;

