if sprite_index == spr_monsterdeath
{
	direction = 0;
	image_speed = 0;
	x = xstart;
	y = ystart;
	sprite_index = spr_playerRight
	image_index = 0
	
	global.golpe = false;
	
	with(obj_blinky)
	{
		x = xstart;
		y = ystart;
		velocidade = 2;
		speed = velocidade;
		sprite_index = spr_blinky;
	
	}
	
	with(obj_pinky)
	{
		x = xstart;
		y = ystart;
		velocidade = 2;
		speed = velocidade;
		sprite_index = spr_pinky;
	}
	
	with(obj_inky)
	{
		x = xstart;
		y = ystart;
		velocidade = 2;
		speed = velocidade;
		sprite_index = spr_inky;
	}
	
	with(obj_clyde)
	{
		x = xstart;
		y = ystart;
		velocidade = 2;
		speed = velocidade;
		sprite_index = spr_clyde;
	
	}
}

