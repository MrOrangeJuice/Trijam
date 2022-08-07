/// @description Respawn

key_jump = keyboard_check(vk_space) || keyboard_check(ord("Z")) || keyboard_check(ord("P"));

if (key_jump)
{
	global.controller = 0;
}

if (gamepad_button_check(0,gp_face1) || gamepad_button_check(4,gp_face1))
{
	key_jump = 1;
	global.controller = 1;
}

if(key_jump)
{
	global.health = 100;
	global.score = 0;
	instance_create_layer(192,912,"Instances",oPlayer);
	instance_destroy();
}