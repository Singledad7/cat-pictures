/// @function nik_switch_joyconer()
/// @description Tries to do joycon things.

switch_controller_set_supported_styles(
	switch_controller_handheld |
	switch_controller_pro_controller |
	switch_controller_joycon_dual
	// TODO: add more styles?
);

switch_controller_joycon_set_holdtype(switch_controller_joycon_holdtype_horizontal);
switch_controller_set_handheld_activation_mode(switch_controller_handheld_activation_dual);

switch_controller_support_set_defaults();
switch_controller_support_set_singleplayer_only(true);
switch_controller_support_set_permit_joycon_dual(true);
return switch_controller_support_show(); //показать апплет контроллеров