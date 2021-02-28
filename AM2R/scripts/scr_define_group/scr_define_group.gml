/// @description scr_define_group()

buffer_async_group_begin("NikSwitchSaveData");
buffer_async_group_option("showdialog", false);
buffer_async_group_option("slottitle", "AM2R");
buffer_async_group_option("subtitle", "AM2R - Savedata");
buffer_async_group_option("savepadindex", oStartupControl.pad);
writelog("Defined async buffer group!");
//nik_print_callstack();