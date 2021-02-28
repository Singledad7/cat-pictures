/// @description  Toggle 8-bit shader.
if (keyboard_check_pressed(vk_f9) && !pressed_key){
    pressed_key = true;
    palette_number++;
    scr_shader_control();
}

if (!keyboard_check_pressed(vk_f9) && pressed_key) pressed_key = false;

