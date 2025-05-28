if (global.vidas == 0 && !global.transicao_gameover)
{
    global.transicao_gameover = true;
    alarm[0] = 5; // espera 5 frames antes de trocar de sala (ajuste se quiser)
}
else if (instance_number(obj_pontos) == 0 && instance_number(obj_powerpellet) == 0)
{
    var proxima = room_next(room);
    if (proxima != -1)
    {	
		audio_play_sound(sound_trocadefase, 1, false);
        room_goto(proxima);
		global.fase += 1;
    }
    else
    {
        room_goto(rm_gameover);
    }

    instance_destroy(); // Destroi o controlador de checagem
}
