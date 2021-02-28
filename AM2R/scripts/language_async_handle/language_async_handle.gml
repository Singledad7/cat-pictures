/// @function language_async_handle()
/// @desc Handles pending language ini.

if (ds_list_empty(llist)) {
	ds_list_destroy(llist);
	llist = -1;
	writelog("lang done");
	loadmsg += "#";
	config_async_init();
}
else {
	var _p = llist[| 0];
	var _b = bufmap[? _p];
	scr_define_group();
	buffer_load_async(_b, _p, 0, -1);
	state = LOADER_STATE.LANGUAGES_INI;
	opid = buffer_async_group_end();
}