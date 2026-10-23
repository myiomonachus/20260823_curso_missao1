if keyboard_check_pressed(vk_space)
{
	image_index++;
	audio_play_sound(sfxTitleAdvance, 6, false);
}

if (image_index > imgFinal)
{
	audio_stop_all();
	room_goto(rmGame);
}