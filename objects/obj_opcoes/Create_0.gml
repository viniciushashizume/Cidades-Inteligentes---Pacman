// Dimensões da barra e botão
barra_largura = 300;
barra_altura = 10;
barra_x = room_width / 2 - barra_largura / 2; // Centralizado
barra_y = room_height / 2 - 50;

btn_voltar_largura = 200;
btn_voltar_altura = 50;
btn_voltar_x = room_width / 2 - btn_voltar_largura / 2;
btn_voltar_y = room_height - 150;

// Volume inicial
if (!variable_global_exists("volume_geral")) {
    global.volume_geral = 1;
}
volume = global.volume_geral;
audio_master_gain(volume); // aplica volume atual