draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, room_height / 2 - 120, "GAME OVER");

// Botão: Tentar Novamente
hover_tentar = (mouse_x > btn_tentar_x && mouse_x < btn_tentar_x + btn_largura && mouse_y > btn_tentar_y && mouse_y < btn_tentar_y + btn_altura);
draw_set_color(hover_tentar ? c_gray : c_dkgray);
draw_rectangle(btn_tentar_x, btn_tentar_y, btn_tentar_x + btn_largura, btn_tentar_y + btn_altura, false);
draw_set_color(c_white);
draw_text(btn_tentar_x + btn_largura / 2, btn_tentar_y + btn_altura / 2, "Tentar Novamente");

// Botão: Menu Principal
hover_menu = (mouse_x > btn_menu_x && mouse_x < btn_menu_x + btn_largura && mouse_y > btn_menu_y && mouse_y < btn_menu_y + btn_altura);
draw_set_color(hover_menu ? c_gray : c_dkgray);
draw_rectangle(btn_menu_x, btn_menu_y, btn_menu_x + btn_largura, btn_menu_y + btn_altura, false);
draw_set_color(c_white);
draw_text(btn_menu_x + btn_largura / 2, btn_menu_y + btn_altura / 2, "Menu Principal");

// Botão: Sair
hover_sair = (mouse_x > btn_sair_x && mouse_x < btn_sair_x + btn_largura && mouse_y > btn_sair_y && mouse_y < btn_sair_y + btn_altura);
draw_set_color(hover_sair ? c_gray : c_dkgray);
draw_rectangle(btn_sair_x, btn_sair_y, btn_sair_x + btn_largura, btn_sair_y + btn_altura, false);
draw_set_color(c_white);
draw_text(btn_sair_x + btn_largura / 2, btn_sair_y + btn_altura / 2, "Sair do Jogo");