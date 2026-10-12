if (image_alpha >= 1)
{
	if keyboard_check_pressed(vk_space)
	{
		global.playerScore = 0;
		room_restart();
	}
}
image_alpha = min(image_alpha + 0.05, 1);