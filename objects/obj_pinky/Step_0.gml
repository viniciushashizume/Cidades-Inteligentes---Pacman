if variable_global_exists("pacman_x") && variable_global_exists("pacman_y")
{
    if place_snapped(32, 32) {
        var target_x, target_y;

        if (global.poder) {
            // Fugir do Pac-Man — calcula um ponto na direção oposta
            var offset = 128; // 4 blocos de distância
            var dir = global.pacman_dir;
            target_x = global.pacman_x;
            target_y = global.pacman_y;

            switch (dir) {
                case 0:    target_x -= offset; break; // Pac-Man indo para a direita → fugir para esquerda
                case 180:  target_x += offset; break; // Pac-Man indo para a esquerda → fugir para direita
                case 90:   target_y += offset; break; // Pac-Man indo para cima → fugir para baixo
                case 270:  target_y -= offset; break; // Pac-Man indo para baixo → fugir para cima
            }
        } else {
            // Comportamento padrão — perseguição
            target_x = global.pacman_x;
            target_y = global.pacman_y;

            var offset = 128;
            switch (global.pacman_dir) {
                case 0:    target_x += offset; break;
                case 180:  target_x -= offset; break;
                case 90:   target_y -= offset; break;
                case 270:  target_y += offset; break;
            }
        }

        // Executa a busca gulosa com base no target ajustado
        var direcao = scr_buscagulosa(target_x, target_y, velocidade);
        hspeed = direcao[0];
        vspeed = direcao[1];
    }
}
