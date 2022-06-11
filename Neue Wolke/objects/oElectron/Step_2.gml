/// @description Create Electrons

if (mouse_check_button_pressed(mb_left) or mouse_check_button(mb_right))
{
	Electron[Electrons][0] = mouse_x + random_range(0, 0.01);
	Electron[Electrons][1] = mouse_y + random_range(0, 0.01);
	for (i = 2; i < 6; i++)
	{
		Electron[Electrons][i] = 0;
	}
	Electrons = Electrons + 1;
}

//show_debug_message(Electrons);