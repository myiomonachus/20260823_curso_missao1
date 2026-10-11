spawnXLeft = 96 + 8;
spawnXRight = 224 - 8;

spawnTimerMax = 90;
alarm[0] = spawnTimerMax;

function chance(_val)
{
	var _randomNum = random(0.99);
	return _val > _randomNum;
}