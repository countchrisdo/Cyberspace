//colors
draw_self();

if (flash > 0)
{
	flash--;
	shader_set(ShaderWhite);
	draw_self();
	shader_reset();
}