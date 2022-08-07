/// @description Respawn

key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("P"));

if (key_jump)
{
	global.controller = 0;
}

if (gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(4,gp_face1))
{
	key_jump = 1;
	global.controller = 1;
}

if(key_jump)
{
	game_restart();
}