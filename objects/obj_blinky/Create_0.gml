randomize();
sprite_index = spr_blinky;
image_speed = 3;

velocidade = 2;

//escolhe a direcao inicial aleatoria
direction = choose(0,90,180,270);
motion_set(direction, velocidade);

target_path = [];
current_step = 0;
recalcular_timer = 0;
