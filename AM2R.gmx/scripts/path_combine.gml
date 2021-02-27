///path_combine(dir,...)

var _out = "";
for (var i = 0; i < argument_count; i++) {
    _out += string(argument[i]);
    if (i < argument_count - 1) {
        _out += global.path_sep;
    }
}

return _out;
