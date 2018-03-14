#define MAX_WEED 1000
#define WEED_OBJECT 19473
#define MAX_WEED_TIME 120 // minutes.
#define WEED_MALE 1
#define WEED_FEMALE 2
#define WEED_NOSEX 0
#define MAX_WEED_SEEDS 10
#define WEED_NOT_USING 0
#define WEED_USING 1
#define MAX_WEED_WATER 18000
#define WEED_ACTIVE 1
#define WEED_INACTIVE 0
#define WEED_NOTFUCKED 0
#define WEED_FUCKED 1
#define WEED_CAN_BE_WATERED 0
#define WEED_CANT_BE_WATERED 1

enum wInfo{
	wCreator[MAX_PLAYER_NAME],
	wObject,
	wTime,
	wSex,
	wSeeds,
	wWater,
	Float:wX,
	Float:wY,
	Float:wZ,
	wActive,
	wFucked,
	wWatered,
	wID,
	wObjectID,
	Text3D:wText3D
}
new WeedInfo[MAX_WEED][wInfo];

enum wpInfo{
	AllowCheckTime,
	PlayerText3D:pwText3D
}
new PlayerWeedInfo[MAX_PLAYERS][wpInfo];

new Iterator:weedLoop<MAX_WEED>;


stock Float:WeedGetX(weedid){
	return WeedInfo[weedid][wX];
}
stock Float:WeedGetY(weedid){
	return WeedInfo[weedid][wY];
}
stock Float:WeedGetZ(weedid){
	return WeedInfo[weedid][wZ];
}

stock WeedThread(weedid){
	if(WeedGetActive(weedid)){
	    printf("WeedGetActive(%i)", weedid);
		if(!IsWeedReadyToBeTaken(weedid)){
		    if(WeedGetWater(weedid) <= 5){
		        WeedAlterActive(weedid, 0);
		        WeedAlterWater(weedid, 0);
		        WeedAlterSex(weedid, WEED_NOSEX);
		        WeedAlterTime(weedid, 0);
		        DestroyDynamicObject(WeedInfo[weedid][wObjectID]);
				WeedInfo[weedid][wObjectID] = CreateObject(702,WeedGetX(weedid), WeedGetY(weedid), WeedGetZ(weedid)+1.0, 0.0, 0.0, 0.0);
		    }else{
				if(WeedGetTime(weedid) <= 10)
	                WeedAlterActive(weedid, 0);
				else{
					if(WeedGetTime(weedid) > (MAX_WEED_TIME - 5)){
						switch(random(3)){
					 		case 0:{
								WeedAlterSex(weedid, WEED_MALE);
								WeedAlterSeeds(weedid, 0);
							}
					 		case 1:{
					 	    	WeedAlterSex(weedid, WEED_FEMALE);
					 	    	WeedAlterSeeds(weedid, random(6)+1);
	 	    				}
					 		case 2:{
					 	    	WeedAlterSex(weedid, WEED_FEMALE);
					 	    	WeedAlterSeeds(weedid, random(6)+1);
							}
							default:
							    WeedAlterSex(weedid, WEED_FEMALE);
						}
						WeedAlterTime(weedid, WeedGetTime(weedid) - 1);
						MoveDynamicObject(WeedInfo[weedid][wObjectID],WeedGetX(weedid),WeedGetY(weedid),WeedGetZ(weedid)+0.03 ,1.0);
						WeedAlterZ(weedid, WeedGetZ(weedid) + 0.03);
					}
					else{
						WeedAlterTime(weedid, WeedGetTime(weedid) - 1);
						WeedAlterWater(weedid, WeedGetWater(weedid) - 600 - 300);
						MoveDynamicObject(WeedInfo[weedid][wObjectID],WeedGetX(weedid),WeedGetY(weedid),WeedGetZ(weedid)+0.01 ,1.0);
						WeedAlterZ(weedid, WeedGetZ(weedid) + 0.01);
						if(WeedGetSex(weedid) == WEED_MALE){
						    for(new i=0; i < MAX_WEED; i++){
						        if( WeedGetSex(i) == WEED_FEMALE &&
									i != weedid &&
									WeedInfo[i][wFucked] != WEED_FUCKED &&
									IsPointInRangeOfPoint(WeedGetX(i), WeedGetY(i), WeedGetZ(i), WeedGetX(weedid), WeedGetY(weedid), WeedGetZ(weedid),50.0))
									WeedInfo[i][wFucked] = WEED_FUCKED;
						    }
						}
						SetWeedReadyToWater(weedid);
					}
				}
			}
        }
	}
}
stock IsPointInRangeOfPoint(Float:x, Float:y, Float:z, Float:x2, Float:y2, Float:z2, Float:range)
{
    x2 -= x;
    y2 -= y;
    z2 -= z;
    return ((x2 * x2) + (y2 * y2) + (z2 * z2)) < (range * range);
}
stock UpdateWeed3DText(weedid){
	new str[128];
	if(MAX_WEED_WATER >= WeedGetWater(weedid) > 17000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}|||||||||||||||||{FF0000}|{00FF00}]");
	else if(17000 >= WeedGetWater(weedid) > 16000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}||||||||||||||||{FF0000}||{00FF00}]");
    else if(16000 >= WeedGetWater(weedid) > 15000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}|||||||||||||||{FF0000}|||{00FF00}]");
    else if(15000 >= WeedGetWater(weedid) > 14000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}||||||||||||||{FF0000}||||{00FF00}]");
    else if(14000 >= WeedGetWater(weedid) > 13000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}|||||||||||||{FF0000}|||||{00FF00}]");
    else if(13000 >= WeedGetWater(weedid) > 12000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}||||||||||||{FF0000}||||||{00FF00}]");
    else if(12000 >= WeedGetWater(weedid) > 11000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}|||||||||||{FF0000}|||||||{00FF00}]");
    else if(11000 >= WeedGetWater(weedid) > 10000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}||||||||||{FF0000}||||||||{00FF00}]");
    else if(10000 >= WeedGetWater(weedid) > 9000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}|||||||||{FF0000}|||||||||{00FF00}]");
    else if(9000 >= WeedGetWater(weedid) > 8000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}||||||||{FF0000}||||||||||{00FF00}]");
    else if(8000 >= WeedGetWater(weedid) > 7000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}|||||||{FF0000}|||||||||||{00FF00}]");
    else if(7000 >= WeedGetWater(weedid) > 6000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}||||||{FF0000}||||||||||||{00FF00}]");
    else if(6000 >= WeedGetWater(weedid) > 5000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}|||||{FF0000}|||||||||||||{00FF00}]");
    else if(5000 >= WeedGetWater(weedid) > 4000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}||||{FF0000}||||||||||||||{00FF00}]");
    else if(4000 >= WeedGetWater(weedid) > 3000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}|||{FF0000}|||||||||||||||{00FF00}]");
    else if(3000 >= WeedGetWater(weedid) > 2000)
	    format(str, sizeof(str), "{00FF00}[{0000FF}||{FF0000}||||||||||||||||{00FF00}]");
    else
	    format(str, sizeof(str), "{00FF00}[{0000FF}|{FF0000}|||||||||||||||||{00FF00}]");
	return str;
}

stock IsWeedReadyToBeTaken(weedid){
	return (WeedGetTime(weedid) <= 10);
}

stock IsWeedReadyToBeWatered(weedid){
	return (WeedInfo[weedid][wWatered] == WEED_CAN_BE_WATERED);
}

stock SetWeedNoMoreWater(weedid){
	WeedInfo[weedid][wWatered] = WEED_CANT_BE_WATERED;
}

stock SetWeedReadyToWater(weedid){
	WeedInfo[weedid][wWatered] = WEED_CAN_BE_WATERED;
}

stock CreateWeed(weedid, const str[], object, time, sex, seeds, water, Float:x, Float:y, Float:z, active){
	WeedAlterCreator(str, weedid);
	WeedAlterObject(weedid, object);
	WeedAlterTime(weedid, time);
	WeedAlterSex(weedid, sex);
	WeedAlterSeeds(weedid, seeds);
	WeedAlterWater(weedid, water);
	WeedAlterX(weedid, x);
	WeedAlterY(weedid, y);
	WeedAlterZ(weedid, z);
	WeedAlterActive(weedid, active);
}

stock WeedAlterCreator(const str[], weedid){
	strmid(WeedInfo[weedid][wCreator], str, 0, MAX_PLAYER_NAME);
}

stock WeedGetCreator(weedid){
	return WeedInfo[weedid][wCreator];
}

stock WeedAlterObject(weedid, object){
	WeedInfo[weedid][wObject] = object;
}

stock WeedGetObject(weedid){
	return WeedInfo[weedid][wObject];
}

stock WeedAlterTime(weedid, time){
	WeedInfo[weedid][wTime] = time;
}

stock WeedGetTime(weedid){
	return WeedInfo[weedid][wTime];
}

stock WeedAlterSex(weedid, sex){
	WeedInfo[weedid][wSex] = sex;
}

stock WeedGetSex(weedid){
	return WeedInfo[weedid][wSex];
}

stock WeedAlterSeeds(weedid, seeds){
	WeedInfo[weedid][wSeeds] = seeds;
}

stock WeedGetSeeds(weedid){
	return WeedInfo[weedid][wSeeds];
}

stock WeedAlterWater(weedid, water){
	WeedInfo[weedid][wWater] = water;
}

stock WeedGetWater(weedid){
	return WeedInfo[weedid][wWater];
}

stock WeedAlterActive(weedid, active){
	WeedInfo[weedid][wActive] = active;
}

stock WeedGetActive(weedid){
	return WeedInfo[weedid][wActive];
}

stock WeedAlterX(weedid, Float:x){
	WeedInfo[weedid][wX] = x;
}

stock WeedAlterY(weedid, Float:y){
	WeedInfo[weedid][wY] = y;
}

stock WeedAlterZ(weedid, Float:z){
	WeedInfo[weedid][wZ] = z;
}

CMD:weed(playerid, params[]){
    new
		init = Iter_Free(weedLoop),
		Float:X,
		Float:Y,
		Float:Z,
		str[6],
		next,
		wText[256],
		bool:flag = false,
		rand;
	if( sscanf(params, "s[6]", str) )
	    return SendClientMessage(playerid, COLOR_GREY, "USAGE: /weed [action]\n\tACTION: plant, pick, info.");
	if( strcmp(str,"plant") == 0){
		Iter_Add(weedLoop, init);
		GetPlayerPos(playerid, X,Y,Z);
		CreateWeed(init, PlayerInfo[playerid][pName], WEED_OBJECT, MAX_WEED_TIME, WEED_NOSEX, MAX_WEED_SEEDS, MAX_WEED_WATER, X, Y, Z-1.6094-1, WEED_ACTIVE);
		SetWeedNoMoreWater(init);
		WeedInfo[init][wObjectID] = CreateDynamicObject(WeedGetObject(init), WeedGetX(init), WeedGetY(init), WeedGetZ(init),0.00000000,0.00000000,0.00000000);
		SendClientMessage(playerid, COLOR_LIGHTGREEN, "[INFO]: Weed plant has been planted, pick it up in 1 hour and 50 minutes");
	}
	else if( strcmp(str, "pick") == 0){
	    foreach(new i : weedLoop){
	        if( IsPlayerInRangeOfPoint(playerid, 3.0, WeedGetX(i), WeedGetY(i), WeedGetZ(i)) ){
	            if(IsWeedReadyToBeTaken(i)){
					switch(WeedGetWater(i)){
						case 0:{
					    	SendClientMessage(playerid, COLOR_LIGHTGREEN, "[INFO]: Next time water up your plant!.");
							DestroyObject(WeedInfo[i][wObjectID]);
							Iter_SafeRemove(weedLoop, i, next);
							i = next;
						}
						default:{
						    switch(WeedGetSex(i)){
						        case WEED_MALE:{
									if(WeedGetWater(i) >= (MAX_WEED_WATER/2)){
									    rand = random(4)+1+3;
									}else{
									    rand = random(4)+1;
									}
									format(wText, sizeof wText, "[INFO]: You've got %d seeds!", rand);
									SendClientMessage(playerid, COLOR_LIGHTGREEN, wText);
								}
						        case WEED_FEMALE:{
									if(WeedGetWater(i) >= (MAX_WEED_WATER/2)){
									    rand = random(4)+1+3;
									}else{
									    rand = random(4)+1;
									}
									format(wText, sizeof wText, "[INFO]: You've got %d grams of weed!", rand);
									SendClientMessage(playerid, COLOR_LIGHTGREEN, wText);
						        }
							}
						    
						}
					}
	            }
	            else{
	                SendClientMessage(playerid, COLOR_LIGHTGREEN, "WARNING: Weed is not ready to be taken.");
	            }
	            flag = true;
	        }
	    }
	    if(!flag)
	        SendClientMessage(playerid, COLOR_LIGHTGREEN, "WARNING: You're not near any weed plant.");
	}
	else if( strcmp(str, "info") == 0 ){
	    if(PlayerWeedInfo[playerid][AllowCheckTime] == 0){
		    foreach(new i : weedLoop){
		        if( IsPlayerInRangeOfPoint(playerid, 3.0, WeedGetX(i), WeedGetY(i), WeedGetZ(i)) ){
		            format(wText, sizeof (wText), "Weed Info:\nWater level: %s\nSex: %s \nTime: %d \nWater: %d \nStatus: %s", UpdateWeed3DText(i), WeedGetSexStatus(i), WeedGetTime(i), WeedGetWater(i), WeedGetStatus(i) );
	         		PlayerWeedInfo[playerid][pwText3D] = CreatePlayer3DTextLabel(playerid, wText, 0xffffffff, WeedGetX(i), WeedGetY(i), WeedGetZ(i), 4.0);
		            flag = true;
		            PlayerWeedInfo[playerid][AllowCheckTime] = 1;
		            SetTimerEx("DestroyWeedText", 4000, false, "d", playerid);
		        }
		    }
		    if(!flag)
		        SendClientMessage(playerid, COLOR_LIGHTGREEN, "WARNING: You're not near any weed plant.");
 		}
 		else
 		    SendClientMessage(playerid, COLOR_LIGHTGREEN, "WARNING: You cant check weed information twice.");
	}
	return 1;
}

stock WeedGetSexStatus(weedid){
	new str[10];
	switch(WeedGetSex(weedid)){
	case WEED_MALE:
 		format(str, sizeof str, "Male");
	case WEED_FEMALE:
	    format(str, sizeof str, "Female");
	default:
	    format(str, sizeof str, "n/a");
	}
	return str;
}

stock WeedGetStatus(weedid){
	new str[10];
	switch(WeedInfo[weedid][wFucked]){
	case WEED_FUCKED:
	    format(str, sizeof str, "Seeder");
	case WEED_NOTFUCKED:
	    format(str, sizeof str, "Weeder");
	}
	return str;
}

CMD:gotoweed(playerid,params[]){
	SetPlayerPos(playerid, WeedInfo[0][wX],WeedInfo[0][wY],WeedInfo[0][wZ]);
	return 1;
}
forward DestroyWeedText(playerid);
public DestroyWeedText(playerid){
    DeletePlayer3DTextLabel(playerid, PlayerWeedInfo[playerid][pwText3D]);
    PlayerWeedInfo[playerid][AllowCheckTime] = 0;
	return 1;
}
stock strcpy(dest[], const source[], maxlength = sizeof(dest)){
    strcat((dest[0] = EOS, dest), source, maxlength);
}
