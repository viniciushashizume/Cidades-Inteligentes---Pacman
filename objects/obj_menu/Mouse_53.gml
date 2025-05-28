// Mouse Left Press event

if (mouse_check_button_pressed(mb_left)) {
    // Botão "Jogar"
    if (global.hover_jogar) {
        audio_play_sound(sound_click, 1, false); // Toca o som de clique
        room_goto(rm_instrucoes);
    }

    // Botão "Opções"
    if (global.hover_opcoes) {
        audio_play_sound(sound_click, 1, false); // Toca o som de clique
        room_goto(rm_opcoes);
    }

    // Botão "Sair"
    if (global.hover_sair) {
        audio_play_sound(sound_click, 1, false); // Toca o som de clique
        game_end();
    }
}
