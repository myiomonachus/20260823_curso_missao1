get_inputs();

switch(state)
{
	case "normal":
	{
		if (left)
		{
			x = positionLeft;
			image_xscale = -1;
			if (xprevious != positionLeft) audio_play_sound(sfxSwap, 8, false);
		}
		else if (right)
		{
			x = positionRight;
			image_xscale = 1;
			if (xprevious != positionRight) audio_play_sound(sfxSwap, 8, false);
		}
		
		if place_meeting(x, y, objHazard)
		{
			if !instance_exists(objGameOver) instance_create_depth(x, y, depth, objGameOver);
			audio_stop_all();
			audio_play_sound(sfxDead, 10, false);
			state = "dead";
		}
		
		break;
	}
	case "dead":
	{
		sprite_index = sprPlayerDead;
	}
}