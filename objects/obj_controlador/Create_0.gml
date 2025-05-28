global.vidas = 3;
global.poder = false;
global.bonus = false;
global.golpe = false;
var inst = instance_find(obj_player, 0);
global.pontosTotal = instance_number(obj_pontos);
global.pontosConsumidos = 0;

if (instance_exists(inst)) {
    global.pacman_x = inst.x;
    global.pacman_y = inst.y;
} else {
    global.pacman_x = 0;
    global.pacman_y = 0;
}
global.pacman_dir = 0;
global.blinky_x = x;
global.blinky_y = y;
global.last_blinky_tile_x = -1;
global.last_blinky_tile_y = -1;
global.last_inky_tile_x = -1;
global.last_inky_tile_y = -1;
global.clyde_x = -1;
global.clyde_y = -1;
global.transicao_gameover = false;