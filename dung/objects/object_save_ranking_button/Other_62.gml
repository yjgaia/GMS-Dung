/// @description  saved ranking

if (ds_map_find_value(async_load, "id") == save_ranking) {

    if (ds_map_find_value(async_load, "status") == 0) {
        
        // 다시 랭킹을 가져옵니다.
        with (object_ranking) {
            load_ranking = http_get("http://plasma.pe.hu/dung/plasma-game-api/ranking/list.php?count=6");
        }
        
        title = "저장됨!";
        
        var ranking = real(ds_map_find_value(async_load, "result"));
        if (ranking == -1) {
            show_message("오류가 발생했다네.");
        } else {
            show_message("당신의 랭킹은 " + string(ranking) + "등 이라네.");
        }
    }
}

