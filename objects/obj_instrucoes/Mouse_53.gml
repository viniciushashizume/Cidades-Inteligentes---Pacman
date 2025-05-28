// Verifica se o clique está dentro do botão "Iniciar"
if (point_in_rectangle(mouse_x, mouse_y, btn_comecar_x, btn_comecar_y, btn_comecar_x + btn_largura, btn_comecar_y + btn_altura)) {
    audio_play_sound(sound_click, 1, false); // Toca o som de clique
    room_goto(rm_fase1); // Vai para a sala do jogo (substitua por sua sala)
	audio_play_sound(sound_trocadefase, 1, false);
}
