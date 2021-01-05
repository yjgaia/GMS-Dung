/// @description  draw_self();

draw_self();

/// draw text

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y + 70, string_hash_to_newline("제작: 심영재"));

