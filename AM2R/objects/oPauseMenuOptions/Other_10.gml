op1 = instance_create(x, y, oPauseOption);
op1.optionid = 0;
op1.label = get_text("PauseMenu", "Resume");
op2 = instance_create(x, y + 16, oPauseOption);
op2.optionid = 1;
op2.label = get_text("PauseMenu", "Restart");
op3 = instance_create(x, y + 32, oPauseOption);
op3.optionid = 2;
op3.label = get_text("PauseMenu", "Options");
op4 = instance_create(x, y + 48, oPauseOption);
op4.optionid = 3;
op4.label = get_text("PauseMenu", "Quit");

