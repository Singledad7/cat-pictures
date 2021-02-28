/// @description check netlog url.

if (async_load[? "id"] == msg) {
    msg = -1;
    alarm[1] = -1;
    if (async_load[? "status"] == true && string_length(async_load[? "result"]) > 1) {
        var _url = async_load[? "result"];
        loadmsg += "url: " + _url + "#";
        url = _url;
        nik_init_netlog();
    }
    else {
        writelog("wrong input");
        alarm[1] = 1;
    }
}

