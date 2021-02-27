///nik_kill_netlog()
if (is_nik_pc) {
    writelog("going to KILL netlog");
    cursed_program("taskkill", "/f /im netlog.exe", true);
}
