/// @description  drop

if (y < 570) {

    y += dy;
    
    dy += 1;
}

if (y > 570) {

    var rk = floor(random(3));
    if (rk == 0) {
        audio_play_sound(sound_drop_dung_1, 1, false);
    } else if (rk == 1) {
        audio_play_sound(sound_drop_dung_2, 1, false);
    } else if (rk == 2) {
        audio_play_sound(sound_drop_dung_3, 1, false);
    }

    y = 570;
    
    sprite_index = sprite_dung_down;
    
    if (object_man.sprite_index == sprite_man) {
        object_game_controller.point += 1;
    }
}

/// game over

if (sprite_index == sprite_dung && place_meeting(x, y, object_man) == true && object_man.sprite_index == sprite_man) {
    
    audio_stop_sound(bgm);
    
    audio_play_sound(sound_game_over, 1, false);
    
    object_man.sprite_index = sprite_man_down;
    
    object_man.hspeed = 0;
    
    instance_create(180, 432, object_start_button);
    
    instance_create(180, 140, object_ranking);
}


