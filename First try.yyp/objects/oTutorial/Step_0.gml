//Control + F = Buscador

key_left = keyboard_check (vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check (vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed (vk_space) or keyboard_check(ord("W"));

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall1) and (key_jump))
{
	vsp = -5;

}

if  (place_meeting(x+hsp, y, oWall1))
{
	while (!place_meeting(x+sign(hsp),y,oWall1))
	{
		x = x + sign(hsp)	
	}
	
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
	sprite_index = sJump;
	image_speed = 0; 
	if (sign(vsp) > 0) image_index = 1;  else image_index = 0;

}


else
{
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = sStanding;
	}
	
else
	{
		sprite_index = sWalkingleft;
	}
}


if (hsp != 0) image_xscale = sign(-hsp);