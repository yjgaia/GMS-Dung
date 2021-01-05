/// @description  save ranking

if (is_already != true) {

    var secure_key = "Ehd";
    
    var name = get_string("이름을 입력하시게... (영문)", "");
    
    if (name != "") {
    
        save_ranking = http_post_string("http://plasma.pe.hu/dung/plasma-game-api/ranking/save.php", "name=" + name + "&point=" + string(object_game_controller.point) + "&key=" + sha1_string_utf8(secure_key + name));
        
        title = "저장중...";
    
        is_already = true;
    }
}

