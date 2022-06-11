/// @description Output Debug Info
// You can write your code in this editor
show_debug_message("");
show_debug_message("");
show_debug_message("Number of Electrons: " + string(Electrons));
show_debug_message("");
show_debug_message("Electrons X, Y, speedX, speedY");
show_debug_message("");
for (i = 0; i < Electrons ; i++)
{
	show_debug_message("Electron " + string(i + 1) + ":");
	for (k = 0; k < 4; k++)	
	{
		show_debug_message(string(Electron[i][k]));
	}
}
show_debug_message("The electrons are actually counted from 0 to " + string(Electrons - 1) + " (start at 0)");