draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Desenhar Fase
var txt_fase = "Fase: " + string(global.fase);
draw_text(5, 5, txt_fase);

// Desenhar Pontos ao lado da Fase
var txt_pontos = "Pontos: " + string(global.pontos);
var pontos_x = string_width(txt_fase) + 20;
draw_text(pontos_x, 5, txt_pontos);

// Desenhar Vidas ao lado dos Pontos
var vidas_x = pontos_x + string_width(txt_pontos) + 20;
draw_text(vidas_x, 5, "Vidas: ");
vidas_x += string_width("Vidas: ");

for (var i = 0; i < global.vidas; i++) {
    draw_sprite_stretched(spr_playerRight, 0, vidas_x + (i * 33), 8, 16, 16);
}

// Alarme (mantenha se necessário)
alarm[1] = room_speed * 15;
