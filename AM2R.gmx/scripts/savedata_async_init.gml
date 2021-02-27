///savedata_async_init()

writelog("loading XORed savedata");
scr_define_group();
savedata_add_file("save1");
savedata_add_file("save2");
savedata_add_file("save3");
savedata_add_file("data.sav");
savedata_add_file("extras.sav");
state = LOADER_STATE.SAVEDATA;
opid = buffer_async_group_end();
