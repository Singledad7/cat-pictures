///nik_init_netlog()

if (!variable_global_exists("__nik_netlog_really_ready")) {
    writelog("trying to init netlog...");
    var _winnt10 = (10*65536+0); // major*65536+minor
    is_nik_pc = (os_type == os_windows && os_version == _winnt10 && environment_get_variable("USERNAME") == "dieka" && environment_get_variable("NINTENDO_SDK_ROOT") == "D:\SDKs\Nintendo\Switch-9.2.0\NintendoSDK");
    
    var _url = "192.168.1.218";
    if (is_nik_pc) {
        // this is my computer.
        _url = "127.0.0.1";
        writelog("running on local dev machine...");
        cursed_program("taskkill", "/f /im netlog.exe", true);
        cursed_program("D:\Projects\Leaked\cat-pictures\AM2R.gmx\datafiles\netlog\netlog.exe", "--port 5101", false);
        writelog("program launched ok");
    }
    
    netlog_init(_url, 5101);
    global.__nik_netlog_really_ready = true;
    once = false;
}
else {
    writelog("wtf? netlog is already loaded!");
}
