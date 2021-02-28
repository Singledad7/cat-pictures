/// @description nik_kill_netlog()

if (variable_global_exists("__nik_netlog_really_ready")) {
    if (is_nik_pc) {
        writelog("going to KILL netlog");
        cursed_program("taskkill", "/f /im netlog.exe", true);
    }
}
