if (room !=rmGame) exit;

draw_set_colour(c_white);
draw_set_font(global.font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _margin = 4;
draw_text(_margin, _margin, "PTS: " + string(global.playerScore));
draw_set_halign(fa_right);
draw_text(room_width - _margin, _margin, "HI-SCORE: " + string(global.highScore));

draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);