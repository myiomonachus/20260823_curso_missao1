if instance_exists(objGameOver) exit;

var _buffer = 24;

if (y > room_height + _buffer)
{
	instance_destroy();
	exit;
}

y += vsp;