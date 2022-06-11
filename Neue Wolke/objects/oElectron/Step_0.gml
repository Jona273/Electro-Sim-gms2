/// @description The Physics Stuff

pause = (keyboard_check(ord("P")));

if (pause == 0)
{
	for (i = 0; i < Electrons; i++)		//Clear rejection Data from last tick
	{
		Electron[i][4] = 0;
		Electron[i][5] = 0;
	}
	for (i = 0; i < Electrons - 1; i++)	//Calculate rejection for this time stemp
	{
		for(k = i + 1; k < Electrons; k++) //For Each other Electron under itself in the list
		{
			var relativeX = Electron[i][0] - Electron[k][0];
			var relativeY = Electron[i][1] - Electron[k][1];
			var Csquared = relativeX * relativeX + relativeY * relativeY;
			var curRejection = charge / Csquared;
			var rejDir = sqrt(Csquared);
			var rejectionX = (relativeX / rejDir) * curRejection;
			var rejectionY = (relativeY / rejDir) * curRejection;
			
			Electron[i][4] = Electron[i][4] + rejectionX;
			Electron[i][5] = Electron[i][5] + rejectionY;
			Electron[k][4] = Electron[k][4] + 0 - rejectionX;
			Electron[k][5] = Electron[k][5] + 0 - rejectionY;
		}
	}
	for (i = 0; i < Electrons; i++)		//Apply rejection to speed
	{
		Electron[i][2] = Electron[i][2] + Electron[i][4];
		Electron[i][3] = Electron[i][3] + Electron[i][5];
	}
	for (i = 0; i < Electrons; i++)		//Apply speed to position
	{
		Electron[i][0] = Electron[i][0] + Electron[i][2];
		Electron[i][1] = Electron[i][1] + Electron[i][3];
	}
}