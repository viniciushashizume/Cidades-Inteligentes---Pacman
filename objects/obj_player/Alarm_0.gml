global.poder = false;
with(obj_blinky)
{
	if sprite_index == spr_monsterdeath
	image_speed = 1;
}
with(obj_pinky)
{
	if sprite_index == spr_monsterdeath
	image_speed = 1;
}
with(obj_inky)
{
	if sprite_index == spr_monsterdeath
	image_speed = 1;
}
with(obj_clyde)
{
	if sprite_index == spr_monsterdeath
	image_speed = 1;
}


alarm [1] = room_speed*3;