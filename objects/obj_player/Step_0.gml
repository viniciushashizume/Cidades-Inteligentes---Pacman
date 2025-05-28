//movimentação
global.pacman_x = x + sprite_xoffset;
global.pacman_y = y + sprite_yoffset;

if (global.golpe) exit; //se o inimigo atacar todos os comandos serao ignorados

if keyboard_check(vk_right) and place_free(x+1,y) and place_snapped(16,16)
	{
	direction = 0;
	speed = velocidadeMovimento;
	global.pacman_dir = 0;//alinhamento em potencia de 4, pois os spr sao 32x32
	}
	
if keyboard_check(vk_left) and place_free(x-1,y) and place_snapped(16,16)
	{
	direction = 180;
	speed = velocidadeMovimento;
	global.pacman_dir = 180;//alinhamento em potencia de 4, pois os spr sao 32x32
	}
	
if keyboard_check(vk_up) and place_free(x,y-1) and place_snapped(16,16)
	{
	direction = 90;
	speed = velocidadeMovimento;
	global.pacman_dir = 90;//alinhamento em potencia de 4, pois os spr sao 32x32
	}
	
if keyboard_check(vk_down) and place_free(x,y+1) and place_snapped(16,16)
	{
	direction = 270;
	speed = velocidadeMovimento;
	global.pacman_dir = 270;//alinhamento em potencia de 4, pois os spr sao 32x32
	}
	
if speed> 0
	{
	image_speed = 1;
	}
	
else
	{
	image_speed = 3;
	image_index = 0;
	}
	
switch(direction)
{
	case 0:
		sprite_index = spr_playerRight
		image_speed = 3;
		break;
	case 90:
		sprite_index = spr_playerUp;
		image_speed = 3;
		break;
	case 180: 
		sprite_index = spr_playerLeft;
		image_speed = 3;
		break;
	case 270:
		sprite_index = spr_playerDown;
		image_speed = 3;
		break;
}