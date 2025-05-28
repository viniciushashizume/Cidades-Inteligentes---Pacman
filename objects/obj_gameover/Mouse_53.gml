if (mouse_check_button_pressed(mb_left)) {
    if (hover_tentar) {
        audio_play_sound(sound_click, 1, false);
        global.vidas = 3;
        room_goto(rm_fase1);
    }
    else if (hover_menu) {
        audio_play_sound(sound_click, 1, false);
        room_goto(rm_menu);
    }
    else if (hover_sair) {
        audio_play_sound(sound_click, 1, false);
        game_end();
    }
}