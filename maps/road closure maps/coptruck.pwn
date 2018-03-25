#include <a_samp>

new objveh[MAX_VEHICLES][26], bool:opendoor[MAX_VEHICLES];

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Police transport vehicle");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}



main()
{
	print("\n----------------------------------");
	print("Police transport caged vehicle test");
	print("----------------------------------\n");
}



public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid, -1, "//text here//.");
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	if(GetVehicleModel(vehicleid) ==554) // Yosemite
	{
	// non moving objects //
	
	    objveh[vehicleid][25] = CreateObject(19420, 0, 0, 0, 0, 0, 0);
	    
		AttachObjectToVehicle(objveh[vehicleid][25], vehicleid, 0.01980, 0.23860, 1.03700,   0.00000, 0.00000, 0.00000);
		
	// non moving objects //
	
	
		opendoor[vehicleid] = false;
	}
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
    if(GetVehicleModel(vehicleid) == 554) //  yosemite
	{
	    DestroyObject(objveh[vehicleid][0]);
	    DestroyObject(objveh[vehicleid][1]);
	    DestroyObject(objveh[vehicleid][2]);
	    DestroyObject(objveh[vehicleid][3]);
	    DestroyObject(objveh[vehicleid][4]);
	    DestroyObject(objveh[vehicleid][5]);
	    DestroyObject(objveh[vehicleid][6]);
	    DestroyObject(objveh[vehicleid][7]);
	 	DestroyObject(objveh[vehicleid][8]);
	    DestroyObject(objveh[vehicleid][9]);
	    DestroyObject(objveh[vehicleid][10]);
	    DestroyObject(objveh[vehicleid][11]);
	    DestroyObject(objveh[vehicleid][12]);
	    DestroyObject(objveh[vehicleid][13]);
	    DestroyObject(objveh[vehicleid][14]);
	    DestroyObject(objveh[vehicleid][15]);
	    DestroyObject(objveh[vehicleid][16]);
	    DestroyObject(objveh[vehicleid][17]);
	    DestroyObject(objveh[vehicleid][18]);
	    DestroyObject(objveh[vehicleid][19]);
	    DestroyObject(objveh[vehicleid][20]);
	    DestroyObject(objveh[vehicleid][21]);
	    DestroyObject(objveh[vehicleid][22]);
	    DestroyObject(objveh[vehicleid][23]);
	    DestroyObject(objveh[vehicleid][24]);
			    
	}
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(strcmp("/cage", cmdtext, true, 10) == 0)
	{
		new vehicleid = GetPlayerVehicleID(playerid);
		if(GetVehicleModel(vehicleid) ==554) // yosemite
		{
			if(!opendoor[vehicleid])
			{

				//destroy closed cage//
   				DestroyObject(objveh[vehicleid][13]);
			    DestroyObject(objveh[vehicleid][14]);
			    DestroyObject(objveh[vehicleid][15]);
			    DestroyObject(objveh[vehicleid][16]);
			    DestroyObject(objveh[vehicleid][17]);
			    DestroyObject(objveh[vehicleid][18]);
			    DestroyObject(objveh[vehicleid][19]);
			    DestroyObject(objveh[vehicleid][20]);
			    DestroyObject(objveh[vehicleid][21]);
			    DestroyObject(objveh[vehicleid][22]);
			    DestroyObject(objveh[vehicleid][23]);
			    DestroyObject(objveh[vehicleid][24]);

			    
			    //create open cage//
				objveh[vehicleid][0] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][1] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][2] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][3] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][4] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][5] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][6] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][7] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][8] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][9] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][10] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][11] = CreateObject(914, 0, 0, 0, 0, 0, 0);
				objveh[vehicleid][12] = CreateObject(914, 0, 0, 0, 0, 0, 0);

			    //attach open cage//
				AttachObjectToVehicle(objveh[vehicleid][0], vehicleid, -1.03790, -1.28850, 1.06630,   0.00000, 90.00000, 90.00000);
				AttachObjectToVehicle(objveh[vehicleid][1], vehicleid, -1.10521, -2.02572, 1.06730,   0.00000, 90.00000, -90.00000);
				AttachObjectToVehicle(objveh[vehicleid][2], vehicleid, 1.07010, -2.02050, 1.06730,   0.00000, 90.00000, -90.00000);
				AttachObjectToVehicle(objveh[vehicleid][3], vehicleid, 1.11810, -1.28850, 1.06230,   0.00000, 90.00000, 90.00000);
				AttachObjectToVehicle(objveh[vehicleid][4], vehicleid, 0.27342, -3.21472, 0.07255,   -45.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][5], vehicleid, -0.24010, -0.50530, 1.06930,   0.00000, 90.00000, 180.00000);
				AttachObjectToVehicle(objveh[vehicleid][6], vehicleid, 0.26790, -0.55130, 1.06730,   0.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][7], vehicleid, 0.36690, -0.94470, 2.01130,   45.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][8], vehicleid, 0.27570, -4.17550, -0.68720,   117.24700, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][9], vehicleid, -0.27260, -3.21470, 0.07260,   -45.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][10], vehicleid, -0.27630, -4.17550, -0.68720,   117.24700, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][11], vehicleid, -1.03790, -1.28850, 1.06630,   0.00000, 90.00000, 90.00000);
				AttachObjectToVehicle(objveh[vehicleid][12], vehicleid, -1.08590, -2.02050, 1.06730,   0.00000, 90.00000, -90.00000);

				opendoor[vehicleid] = true;
				return 1;
			}
			else 
			{   // destroy open cage //
			    DestroyObject(objveh[vehicleid][0]);
			    DestroyObject(objveh[vehicleid][1]);
			    DestroyObject(objveh[vehicleid][2]);
			    DestroyObject(objveh[vehicleid][3]);
			    DestroyObject(objveh[vehicleid][4]);
			    DestroyObject(objveh[vehicleid][5]);
			    DestroyObject(objveh[vehicleid][6]);
			    DestroyObject(objveh[vehicleid][7]);
			    DestroyObject(objveh[vehicleid][8]);
			    DestroyObject(objveh[vehicleid][9]);
			    DestroyObject(objveh[vehicleid][10]);
			    DestroyObject(objveh[vehicleid][11]);
		     	DestroyObject(objveh[vehicleid][12]);
		     	
				// create shut cage //
			    objveh[vehicleid][13] = CreateObject(914, -1.03790, -1.28850, 1.06630,   0.00000, 90.00000, 90.00000);
				objveh[vehicleid][14] = CreateObject(914, -1.10521, -2.02572, 1.06730,   0.00000, 90.00000, -90.00000);
				objveh[vehicleid][15] = CreateObject(914, 1.07010, -2.02050, 1.06730,   0.00000, 90.00000, -90.00000);
				objveh[vehicleid][16] = CreateObject(914, 1.11810, -1.28850, 1.06230,   0.00000, 90.00000, 90.00000);
				objveh[vehicleid][17] = CreateObject(914, -0.24010, -0.50530, 1.06930,   0.00000, 90.00000, 180.00000);
				objveh[vehicleid][18] = CreateObject(914, 0.26790, -0.55130, 1.06730,   0.00000, 90.00000, 0.00000);
				objveh[vehicleid][19] = CreateObject(914, 0.26790, -2.77430, 1.06730,   0.00000, 90.00000, 0.00000);
				objveh[vehicleid][20] = CreateObject(914, -0.24010, -2.74030, 1.06930,   0.00000, 90.00000, 180.00000);
				objveh[vehicleid][21] = CreateObject(914, -0.35710, -1.10370, 1.64030,   90.00000, 90.00000, 0.00000);
				objveh[vehicleid][22] = CreateObject(914, -0.35710, -2.27370, 1.64030,   90.00000, 90.00000, 0.00000);
				objveh[vehicleid][23] = CreateObject(914, 0.36690, -1.10370, 1.64030,   90.00000, 90.00000, 0.00000);
				objveh[vehicleid][24] = CreateObject(914, 0.36690, -2.27570, 1.64030,   90.00000, 90.00000, 0.00000);
				// attach shut cage //
				AttachObjectToVehicle(objveh[vehicleid][13], vehicleid, -1.03790, -1.28850, 1.06630,   0.00000, 90.00000, 90.00000);
				AttachObjectToVehicle(objveh[vehicleid][14], vehicleid, -1.10521, -2.02572, 1.06730,   0.00000, 90.00000, -90.00000);
				AttachObjectToVehicle(objveh[vehicleid][15], vehicleid, 1.07010, -2.02050, 1.06730,   0.00000, 90.00000, -90.00000);
				AttachObjectToVehicle(objveh[vehicleid][16], vehicleid, 1.11810, -1.28850, 1.06230,   0.00000, 90.00000, 90.00000);
				AttachObjectToVehicle(objveh[vehicleid][17], vehicleid, -0.24010, -0.50530, 1.06930,   0.00000, 90.00000, 180.00000);
				AttachObjectToVehicle(objveh[vehicleid][18], vehicleid, 0.26790, -0.55130, 1.06730,   0.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][19], vehicleid, 0.26790, -2.77430, 1.06730,   0.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][20], vehicleid, -0.24010, -2.74030, 1.06930,   0.00000, 90.00000, 180.00000);
				AttachObjectToVehicle(objveh[vehicleid][21], vehicleid, -0.35710, -1.10370, 1.64030,   90.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][22], vehicleid, -0.35710, -2.27370, 1.64030,   90.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][23], vehicleid, 0.36690, -1.10370, 1.64030,   90.00000, 90.00000, 0.00000);
				AttachObjectToVehicle(objveh[vehicleid][24], vehicleid, 0.36690, -2.27570, 1.64030,   90.00000, 90.00000, 0.00000);
				
			    opendoor[vehicleid] = false;
		     }
	    }
	    return 1;
	}
	return 0;
}


