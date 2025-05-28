alarm[0] = room_speed * 5;

global.pontos += 50;
audio_play_sound(sound_comendopowerup, 1, false); 

global.poder = true;

with (obj_blinky)
{
	sprite_index = spr_monsterdeath;
	image_speed = 0;
	image_index = 0;
	velocidade = 2;
	speed = 2;
}

with (obj_pinky)
{
	sprite_index = spr_monsterdeath;
	image_speed = 0;
	image_index = 0;
	velocidade = 2;
	speed = 2;
}

with (obj_inky)
{
	sprite_index = spr_monsterdeath;
	image_speed = 0;
	image_index = 0;
	velocidade = 2;
	speed = 2;
}

with (obj_clyde)
{
	sprite_index = spr_monsterdeath;
	image_speed = 0;
	image_index = 0;
	velocidade = 2;
	speed = 2;
}

with (other)
{
	instance_destroy();
}
