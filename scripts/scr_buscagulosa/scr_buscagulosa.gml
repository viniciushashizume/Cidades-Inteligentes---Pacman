function scr_buscagulosa(px, py, velocidade) {
    var dirs = [
        [0, -1], // cima
        [0, 1],  // baixo
        [-1, 0], // esquerda
        [1, 0]   // direita
    ];

    var best_h = 100000;
    var best_dirs = [];

    var last_dx = (hspeed != 0) ? sign(hspeed / velocidade) : 0;
    var last_dy = (vspeed != 0) ? sign(vspeed / velocidade) : 0;

    for (var i = 0; i < 4; i++) {
        var dx = dirs[i][0];
        var dy = dirs[i][1];

        // Evita voltar
        if (dx == -last_dx && dy == -last_dy) continue;

        var test_x = x + dx * 32;
        var test_y = y + dy * 32;

        if (!place_meeting(test_x, test_y, obj_wall)) {
            var h = abs(test_x - px) + abs(test_y - py);
            if (h < best_h) {
                best_h = h;
                best_dirs = [[dx, dy]];
            } else if (h == best_h) {
                array_push(best_dirs, [dx, dy]);
            }
        }
    }

    // Se estiver preso, libera todas as direções possíveis
    if (array_length(best_dirs) == 0) {
        for (var i = 0; i < 4; i++) {
            var dx = dirs[i][0];
            var dy = dirs[i][1];
            var test_x = x + dx * 32;
            var test_y = y + dy * 32;
            if (!place_meeting(test_x, test_y, obj_wall)) {
                array_push(best_dirs, [dx, dy]);
            }
        }
    }

    // Escolha consistente (prioridade: cima, baixo, esquerda, direita)
    if (array_length(best_dirs) > 0) {
        var dx = best_dirs[0][0];
        var dy = best_dirs[0][1];
        return [dx * velocidade, dy * velocidade];
    } else {
        return [0, 0];
    }
}