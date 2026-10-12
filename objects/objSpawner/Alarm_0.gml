if instance_exists(objGameOver) exit;

var _canSpawnHazard = true;

//left spawn
if (chance(0.75))
{
	if (chance(2/3))
	{
		var _buffer = 24;
		if (chance(0.5))
		{
			//spawn pickup
			instance_create_depth(spawnXLeft, -_buffer, depth, objPickup);
		}
		else
		{
			//spawn hazard
			instance_create_depth(spawnXLeft, -_buffer, depth, objHazard);
			//don't spawn hazards on both sides!
			_canSpawnHazard = false;
		}
	}
}

//right spawn
if (chance(0.75))
{
	if (chance(2/3))
	{
		var _buffer = 24;
		if !(_canSpawnHazard) || (chance(0.5))
		{
			//spawn pickup
			instance_create_depth(spawnXRight, -_buffer, depth, objPickup);
		}
		else
		{
			//spawn hazard
			instance_create_depth(spawnXRight, -_buffer, depth, objHazard);
		}
	}
}

alarm[0] = spawnTimerMax;