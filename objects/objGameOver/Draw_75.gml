draw_set_colour(c_black);
draw_set_alpha(image_alpha * 0.5);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_colour(c_white);
draw_set_alpha(image_alpha);
draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/2, "GAME OVER");

draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);