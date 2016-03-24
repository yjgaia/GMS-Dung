/// dung_start_game();

audio_play_sound(sound_start_game, 1, false);

room_goto(room_regame);

if (room == room_game) {
    audio_play_sound(bgm, 1, true);
}
