if (mouse_check_button_pressed(mb_left)) {
    if (hover_menu) {
        audio_play_sound(sound_click, 1, false);
        room_goto(rm_menu);
    }

    if (hover_sair) {
        audio_play_sound(sound_click, 1, false);
        game_end();
    }
}
