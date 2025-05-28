// Controle do slider
if (mouse_check_button(mb_left)) {
    if (mouse_x > barra_x && mouse_x < barra_x + barra_largura &&
        mouse_y > barra_y - 10 && mouse_y < barra_y + 10)
    {
        volume = clamp((mouse_x - barra_x) / barra_largura, 0, 1);
        global.volume_geral = volume;
        audio_master_gain(volume);
    }
}

// Clique no botão "Voltar"
if (mouse_check_button_pressed(mb_left)) {
    if (mouse_x > btn_voltar_x && mouse_x < btn_voltar_x + btn_voltar_largura &&
        mouse_y > btn_voltar_y && mouse_y < btn_voltar_y + btn_voltar_altura)
    {
        room_goto(rm_menu);
    }
}