randomize();
sprite_index = spr_pinky;
image_speed = 3;
x_inicial = x;
y_inicial = y;
velocidade = 2;

//escolhe a direcao inicial aleatoria
direction = choose(0,90,180,270);
motion_set(direction, velocidade);