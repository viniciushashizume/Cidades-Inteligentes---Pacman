// --- DRAW ---
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Título centralizado
draw_set_color(c_white);
draw_text(room_width / 2, 100, "Opcoes");

// Texto do volume (centralizado acima da barra)
draw_text(room_width / 2, barra_y - 30, "Volume: " + string_format(volume * 100, 0, 0) + "%");

// Barra de volume
draw_set_color(c_gray);
draw_rectangle(barra_x, barra_y - barra_altura / 2, barra_x + barra_largura, barra_y + barra_altura / 2, false);

draw_set_color(c_lime);
draw_rectangle(barra_x, barra_y - barra_altura / 2, barra_x + (volume * barra_largura), barra_y + barra_altura / 2, false);

// Botão Voltar
draw_set_color(c_dkgray);
draw_rectangle(btn_voltar_x, btn_voltar_y, btn_voltar_x + btn_voltar_largura, btn_voltar_y + btn_voltar_altura, false);

draw_set_color(c_white);
draw_text(btn_voltar_x + btn_voltar_largura / 2, btn_voltar_y + btn_voltar_altura / 2, "Voltar");