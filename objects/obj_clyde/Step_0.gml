// Atualiza posição global
global.clyde_x = x + sprite_xoffset;
global.clyde_y = y + sprite_yoffset;

// Se for atingido
if global.golpe {
    speed = 0;
    vspeed = 0;
    hspeed = 0;
    visible = false;

    x = xstart;
    y = ystart;
    exit;
} else {
    visible = true;
}

// Apenas calcula novo caminho se estiver centralizado na grade
if place_snapped(32, 32) {
    var startX = x div 32;
    var startY = y div 32;

    var pacX = global.pacman_x div 32;
    var pacY = global.pacman_y div 32;

    var dist = point_distance(startX, startY, pacX, pacY);

    var endX, endY;

    // Se estiver perto demais do Pac-Man, foge para o ponto inicial
    if (dist < 4) {
        endX = xstart div 32;
        endY = ystart div 32;
    } else {
        // Caso contrário, persegue o Pac-Man
        endX = pacX;
        endY = pacY;
    }

    var path = scr_astarpath(startX, startY, endX, endY);

    if (array_length(path) > 1) {
        var next_step = path[1]; // ex: "10,15"
        var comma_index = string_pos(",", next_step);
        var next_x = real(string_copy(next_step, 1, comma_index - 1));
        var next_y = real(string_copy(next_step, comma_index + 1, string_length(next_step)));

        var dx = next_x - startX;
        var dy = next_y - startY;

        hspeed = dx * velocidade;
        vspeed = dy * velocidade;
    } else {
        hspeed = 0;
        vspeed = 0;
    }
}
