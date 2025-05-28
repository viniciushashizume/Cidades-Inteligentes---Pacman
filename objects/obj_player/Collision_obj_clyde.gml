if (other.sprite_index == spr_monsterdeath)
{
    global.pontos += 200;

    // Toca o som de comer fantasma
    audio_play_sound(sound_comendofantasma, 1, false);

    with (other)
    {
        x = xstart;
        y = ystart;
        velocidade = 2;
        speed = velocidade;
        sprite_index = spr_clyde;
    }
}
else if (!global.golpe) and (x == other.x or y == other.y)
{
    // Toca o som de morte
    audio_play_sound(sound_morreu, 1, false);

    room_speed = 30;
    obj_controlador.alarm[1] = room_speed * 15;
    speed = 0;
    global.vidas -= 1;
    sprite_index = spr_monsterdeath;
    image_speed = 1;
    global.golpe = true;
}
