/// @function nik_switch_accounter()
/// @description Will try to initialize accounts.

switch_accounts_get_accounts();
global.Account = switch_accounts_select_account(true, false, false);
loadmsg += "#logged in as: " + string(switch_accounts_get_nickname(global.Account)) + "#";