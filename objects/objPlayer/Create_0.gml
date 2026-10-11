positionLeft = 96 + sprite_get_xoffset(sprite_index);
positionRight = 224 - sprite_get_xoffset(sprite_index);

x = positionRight;

state = "normal";

function get_inputs()
{
	left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
}