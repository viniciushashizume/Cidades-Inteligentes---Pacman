// Texto informativo
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(-1);

var margem_x = 20;

// Suaviza a entrada dos textos
texto_offset = lerp(texto_offset, texto_alvo, 0.1);

// Instruções e sprites
draw_text(margem_x, 60 + texto_offset, "Use as teclas direcionais");
draw_text(margem_x, 90 + texto_offset, "para mover seu personagem.");
draw_sprite(spr_teclas, 0, 270, 30 + texto_offset);

draw_text(margem_x, 160 + texto_offset, "Evite os monstros de lixo!");
draw_text(margem_x, 190 + texto_offset, "Se encostar neles, voce perde.");
draw_sprite(spr_blinky, 0, 300, 160 + texto_offset);

draw_text(margem_x, 260 + texto_offset, "Recolha os fios antigos pela cidade");
draw_text(margem_x, 290 + texto_offset, "para ganhar pontos e ajudar o meio ambiente.");
draw_sprite(spr_fio, 0, 430, 260 + texto_offset);

draw_text(margem_x, 370 + texto_offset, "Pegue itens de cidades inteligentes como:");
draw_text(margem_x, 400 + texto_offset, "onibus tecnologicos, paineis solares, totens de Wi-Fi...");
draw_text(margem_x, 430 + texto_offset, "Eles te dao habilidades temporarias!");
draw_sprite(spr_painel, 0, 570, 370 + texto_offset);
draw_sprite(spr_obus, 0, 600, 370 + texto_offset);
draw_sprite(spr_totem, 0, 630, 370 + texto_offset);
draw_sprite(spr_bicicleta, 0, 660, 370 + texto_offset);

// Efeito de hover no botão "Iniciar"
var mouse_sobre_btn = point_in_rectangle(mouse_x, mouse_y, btn_comecar_x, btn_comecar_y, btn_comecar_x + btn_largura, btn_comecar_y + btn_altura);

if (mouse_sobre_btn) {
    draw_set_color(c_gray); // Cor de hover
} else {
    draw_set_color(c_dkgray); // Cor padrão
}

// Centraliza o botão na tela
draw_rectangle(btn_comecar_x, btn_comecar_y, btn_comecar_x + btn_largura, btn_comecar_y + btn_altura, false);
draw_set_color(c_white);

// Corrigindo o alinhamento do texto no botão
var texto_x = btn_comecar_x + (btn_largura / 2);
var texto_y = btn_comecar_y + (btn_altura / 2);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(texto_x, texto_y, "Iniciar");

