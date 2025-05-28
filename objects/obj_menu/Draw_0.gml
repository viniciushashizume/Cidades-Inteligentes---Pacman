// Draw event

// Alinhamento do texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Título centralizado acima dos botões
draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2 - 100 - 100, "CIDADES INTELIGENTES - PACMAN");
draw_sprite(spr_painel_1, 0, 226, 130);

// Efeito de hover nos botões (cor muda quando o mouse passa sobre o botão)

// Botão Jogar
global.hover_jogar = mouse_x > btn_jogar_x && mouse_x < btn_jogar_x + btn_largura &&
                     mouse_y > btn_jogar_y && mouse_y < btn_jogar_y + btn_altura;

if (global.hover_jogar) {
    draw_set_color(c_gray); // Cor do botão quando o mouse está sobre ele
} else {
    draw_set_color(c_dkgray); // Cor padrão
}
draw_rectangle(btn_jogar_x, btn_jogar_y, btn_jogar_x + btn_largura, btn_jogar_y + btn_altura, false);
draw_set_color(c_white);
draw_text(btn_jogar_x + btn_largura / 2, btn_jogar_y + btn_altura / 2, "Jogar");

// Botão Opções
global.hover_opcoes = mouse_x > btn_opcoes_x && mouse_x < btn_opcoes_x + btn_largura &&
                      mouse_y > btn_opcoes_y && mouse_y < btn_opcoes_y + btn_altura;

if (global.hover_opcoes) {
    draw_set_color(c_gray); // Cor do botão quando o mouse está sobre ele
} else {
    draw_set_color(c_dkgray); // Cor padrão
}
draw_rectangle(btn_opcoes_x, btn_opcoes_y, btn_opcoes_x + btn_largura, btn_opcoes_y + btn_altura, false);
draw_set_color(c_white);
draw_text(btn_opcoes_x + btn_largura / 2, btn_opcoes_y + btn_altura / 2, "Opcoes");

// Botão Sair
global.hover_sair = mouse_x > btn_sair_x && mouse_x < btn_sair_x + btn_largura &&
                    mouse_y > btn_sair_y && mouse_y < btn_sair_y + btn_altura;

if (global.hover_sair) {
    draw_set_color(c_gray); // Cor do botão quando o mouse está sobre ele
} else {
    draw_set_color(c_dkgray); // Cor padrão
}
draw_rectangle(btn_sair_x, btn_sair_y, btn_sair_x + btn_largura, btn_sair_y + btn_altura, false);
draw_set_color(c_white);
draw_text(btn_sair_x + btn_largura / 2, btn_sair_y + btn_altura / 2, "Sair");
