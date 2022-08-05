/// @description Draw

draw_self();

if(flash < 0)
{
	flash--;
	shader_set(shCharge);
	draw_self();
	shader_reset();
}
