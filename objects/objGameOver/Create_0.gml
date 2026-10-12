image_alpha = 0;

if layer_exists("Background")
{
	layer_vspeed(layer_get_id("Background"), 0);
}

if (global.playerScore > global.highScore)
{
	global.highScore = global.playerScore;
}