/// @description  draw text

if (ranking_list == -1) {
    
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    
    draw_text(x, y, string_hash_to_newline("랭킹 로딩중..."));
}

else {

    for (var i = 0; i < ds_list_size(ranking_list); i += 1) {
        
        var ranking_data = ds_list_find_value(ranking_list, i);
        
        draw_set_color(c_black);
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        
        draw_text(x, y + i * 38, string_hash_to_newline(string(i + 1) + "등: " + ds_map_find_value(ranking_data, "name") + " 점수: " + ds_map_find_value(ranking_data, "point")));
    }
}

