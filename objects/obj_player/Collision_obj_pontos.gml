global.pontos += 10;
global.pontosConsumidos += 1;

// Toca o som de comer ponto
audio_play_sound(sound_comendofio, 1, false);

with (other)
{
    instance_destroy();
}
