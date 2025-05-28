if variable_global_exists("pacman_x") && variable_global_exists("pacman_y") &&
   variable_global_exists("blinky_x") && variable_global_exists("blinky_y")
{
    if place_snapped(32, 32) {
        // --- VERIFICAÇÃO DE LOOP ---
        var tile_x = x div 32;
        var tile_y = y div 32;

        if (tile_x == global.last_inky_tile_x && tile_y == global.last_inky_tile_y) {
            hspeed = 0;
            vspeed = 0;
            exit; // Evita loop
        }

        global.last_inky_tile_x = tile_x;
        global.last_inky_tile_y = tile_y;

        // Previsão 2 blocos à frente do Pac-Man
        var offset = 64;
        var px = global.pacman_x;
        var py = global.pacman_y;

        switch (global.pacman_dir) {
            case 0:    px += offset; break; // direita
            case 180:  px -= offset; break; // esquerda
            case 90:   py -= offset; break; // cima
            case 270:  py += offset; break; // baixo
        }

        // Posição do Blinky (vermelho)
        var bx = global.blinky_x;
        var by = global.blinky_y;

        // Vetor final
        var vx = (px - bx) * 2;
        var vy = (py - by) * 2;

        var target_x = bx + vx;
        var target_y = by + vy;

        // Busca a direção
        var direcao = scr_buscagulosa(target_x, target_y, velocidade);
        hspeed = direcao[0];
        vspeed = direcao[1];
    }
}
