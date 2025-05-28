hspeed = -hspeed;
vspeed = -vspeed;

//

if place_snapped(32,32)
{
	if hspeed == 0
	{
		if random(3) < 1 and place_free(x-1, y)
		{
			hspeed = -velocidade;
			vspeed = 0;
		}
		if random(3) < 1 and place_empty(x+1, y)
		{
			hspeed = velocidade;
			vspeed = 0;
		}
	}
	else
	{
		if random(3)<1 and place_free(x,y-1)
		{
			hspeed = 0;
			vspeed = -velocidade;
		}
		if random(3) <1 and place_free(x,y+1)
		{
			hspeed = 0;
			vspeed = velocidade;
		}
	}
}