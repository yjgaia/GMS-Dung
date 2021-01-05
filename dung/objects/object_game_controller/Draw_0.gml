/// @description  draw point

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(180, 20, string_hash_to_newline("점수: " + string(point)));

