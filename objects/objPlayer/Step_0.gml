get_inputs();

switch(state)
{
	case "normal":
	{
		if (left) x = positionLeft;
		if (right) x = positionRight;
		
		if place_meeting(x, y, objHazard)
		{
			if !instance_exists(objGameOver) instance_create_depth(x, y, depth, objGameOver);
			state = "dead";
		}
		
		break;
	}
	case "dead":
	{
		image_blend = c_red;
	}
}