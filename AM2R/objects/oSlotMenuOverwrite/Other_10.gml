vsep = 10;
op[50] = instance_create(x - 4, y + 3, oMenuLabelR);
op[50].text = lblstr;
op[0] = instance_create(x - 4, y + 3 + vsep, oNormalOptionR);
op[0].optionid = 0;
op[0].label = yesstr;
op[1] = instance_create(x - 4, y + 3 + vsep * 2, oNormalOptionR);
op[1].optionid = 1;
op[1].label = nostr;

