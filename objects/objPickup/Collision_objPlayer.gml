global.playerScore = min(global.playerScore + 1, 999);
audio_play_sound(sfxCoin, 8, false);
instance_destroy();