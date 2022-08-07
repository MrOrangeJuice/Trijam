/// @description Move

vsp = vsp + grv;

// Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	hsp *= -1;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (hsp != 0) image_xscale = sign(hsp) * strength;

if(hp <= 0)
{
	global.score += 10 * strength;
	audio_play_sound(snd_EnemyDeath,5,false);
	instance_destroy();	
}
