/// @description Draw the Electrons

draw_set_color(c_yellow);
for (i = 0; i < Electrons; i++)
{
	draw_sprite_stretched(sElectron, 0, Electron[i][0], Electron[i][1], scale, scale);
	//draw_circle_color(Electron[i][0], Electron[i][1], scale, c_yellow, c_red, false);
}