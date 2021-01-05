/// @description  loaded ranking

if (ds_map_find_value(async_load, "id") == load_ranking) {

    if (ds_map_find_value(async_load, "status") == 0) {
        
        if (ranking_list != -1) {
            ds_list_destroy(ranking_list);
        }
    
        ranking_list = ds_map_find_value(json_decode(ds_map_find_value(async_load, "result")), "list");
        
        if (instance_exists(object_save_ranking_button) != true) {
            instance_create(180, 90, object_save_ranking_button);
        }
    }
}

