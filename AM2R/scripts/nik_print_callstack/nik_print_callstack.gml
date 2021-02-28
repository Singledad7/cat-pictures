/// @function nik_print_callstack()
/// @description what

var _cs = debug_get_callstack();
writelog("--- callstack begin ---");
for (var _i = 0; _i < array_length_1d(_cs); _i++) {
	writelog(_cs[_i]);
}
writelog("--- callstack  end  ---");