global.blinky_x = x + sprite_xoffset;
global.blinky_y = y + sprite_yoffset;

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
    var endX = global.pacman_x div 32;
    var endY = global.pacman_y div 32;

    var path = scr_astarpath(startX, startY, endX, endY);

    if (array_length(path) > 1) {
        // O primeiro elemento é a posição atual, o segundo é o próximo passo
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
	
	//sprite_index = Blinky_v2;
}
