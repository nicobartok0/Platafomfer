vsp = vsp + grv;
if  (place_meeting(x+hsp, y, oWall1))
{
	while (!place_meeting(x+sign(hsp),y,oWall1))
	{
		x = x + sign(hsp)	
	}
	
	hsp = 0;
	
}

x = x + hsp;

if  (place_meeting(x, y+vsp, oWall1))
{
	while (!place_meeting(x,y+sign(vsp),oWall1))
	{
		y = y + sign(vsp)	
	}
	
	vsp = 0;
	
}

y = y + vsp;

// Animaciones --------------------------------------------------------------------------------------------------------------------------------------------------------
// ! = not 

if (!place_meeting(x,y+1,oWall1))
{
	sprite_index = sEnemyA;
	image_speed = 0; 
	if (sign(vsp) > 0) image_index = 1;  else image_index = 0;

}


else
{
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = sEnemy;
	}
	
else
	{
		sprite_index = sEnemyR;
	}
}


if (hsp != 0) image_xscale = sign(-hsp);