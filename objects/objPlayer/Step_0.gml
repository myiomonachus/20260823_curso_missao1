get_inputs();

switch(state)
{
	case "normal":
	{
		if (left)
		{
			x = positionLeft;
			image_xscale = -1;
		}
		if (right)
		{
			x = positionRight;
			image_xscale = 1;
		}
		
		if place_meeting(x, y, objHazard)
		{
			if !instance_exists(objGameOver) instance_create_depth(x, y, depth, objGameOver);
			state = "dead";
		}
		
		break;
	}
	case "dead":
	{
		sprite_index = sprPlayerDead;
	}
}