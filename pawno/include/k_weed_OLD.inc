#define MAX_WEED 100
#define WEED_OBJECT 19473
#define MAX_WEED_TIME 18000
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

stock Float:WeedGetX(weedid){
	return WeedInfo[weedid][wX];
}
stock Float:WeedGetY(weedid){
	return WeedInfo[weedid][wY];
}
stock Float:WeedGetZ(weedid){
	return WeedInfo[weedid][wZ];
}

forward WeedThread();
public WeedThread(){
 	//print("WEEDTHREAD TIMER LAUNCHED");
	for(new weedid = 0; weedid < MAX_WEED; weedid++){
		if(WeedGetActive(weedid)){
 			if(!IsWeedReadyToBeTaken(weedid)){
				if(WeedGetTime(weedid) <= 600)
                    WeedAlterActive(weedid, 0);
				else{
					if(WeedGetTime(weedid) > (MAX_WEED_TIME - 1200)){
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
						WeedAlterTime(weedid, WeedGetTime(weedid) - 1200);
						//printf("OLD Z of id[%i] = %f", weedid, WeedGetZ(weedid));
						MoveDynamicObject(WeedInfo[weedid][wObjectID],WeedGetX(weedid),WeedGetY(weedid),WeedGetZ(weedid)+0.03 ,1.0);
						WeedAlterZ(weedid, WeedGetZ(weedid) + 0.03);
						//printf("NEW Z of id[%i] = %f", weedid, WeedGetZ(weedid));
						UpdateWeed3DText(weedid);
						//printf("MOVES %i weed less than 1200", weedid);
					}
					else{
						WeedAlterTime(weedid, WeedGetTime(weedid) - 600);
						WeedAlterWater(weedid, WeedGetWater(weedid) - 600 - 300);
						//printf("NEXT OLD Z of id[%i] = %f", weedid, WeedGetZ(weedid));
						MoveDynamicObject(WeedInfo[weedid][wObjectID],WeedGetX(weedid),WeedGetY(weedid),WeedGetZ(weedid)+0.03 ,1.0);
						//printf("MOVES %i weed more than 1200", weedid);
						WeedAlterZ(weedid, WeedGetZ(weedid) + 0.03);
						//printf("NEXT NEW Z of id[%i] = %f", weedid, WeedGetZ(weedid));
						if(WeedGetSex(weedid) == WEED_MALE){
						    for(new i=0; i < MAX_WEED; i++){
						        if( WeedGetSex(weedid) == WEED_FEMALE &&
									i != weedid &&
									WeedInfo[i][wFucked] != WEED_FUCKED &&
									IsPointInRangeOfPoint(WeedGetX(i), WeedGetY(i), WeedGetZ(i), WeedGetX(weedid), WeedGetY(weedid), WeedGetZ(weedid),50.0))
									WeedInfo[i][wFucked] = WEED_FUCKED;
						    }
						}
						SetWeedReadyToWater(weedid);
						UpdateWeed3DText(weedid);
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
	UpdateDynamic3DTextLabelText(WeedInfo[weedid][wText3D], 0xffffffff, str);
}

stock IsWeedReadyToBeTaken(weedid){
	return (WeedGetTime(weedid) <= 600);
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
stock MySQL_InsertWeed(query[229], weedid, const str[], object, time, sex, seeds, water, Float:x, Float:y, Float:z, active){
	format(query, sizeof(query), "INSERT INTO samp_weed (creator,object,time,sex,seeds,water,x,y,z,active,fucked,watered,id)\
								  values ('%s',%i,%i,%i,%i,%i,%f,%f,%f,%i,%i,%i,%i)",str,object,time,sex,seeds,water
								  ,x,y,z,active, WeedInfo[weedid][wFucked], WeedInfo[weedid][wWatered], weedid);
	mysql_query_callback(weedid,query,"mysql_insert_weed_thread");
}
forward mysql_insert_weed_thread(query[], index, extraid, connectionHandle);
public mysql_insert_weed_thread(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_insert_weed_thread(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}
stock MySQL_UpdateWeed(query[], weedid, object, time, sex, seeds, water, Float:z, active){
	format(query, 229, "UPDATE samp_weed SET object=%i,time=%i,sex=%i,seeds=%i,water=%i,z=%f,active=%i,fucked=%i,watered=%i \
								  WHERE id=%i", object,time,sex,seeds,water,z,active,WeedInfo[weedid][wFucked], WeedInfo[weedid][wWatered], weedid);
	mysql_query_callback(weedid,query,"mysql_update_weed_thread");
}
forward mysql_update_weed_thread(query[], index, extraid, connectionHandle);
public mysql_update_weed_thread(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_thread(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}

stock WeedAlterCreator(const str[], weedid){
	strmid(WeedInfo[weedid][wCreator], str, 0, MAX_PLAYER_NAME);
}
stock WeedUpdateCreator(query[], const str[], weedid, x, y){
	format(query, sizeof(query), "UPDATE samp_weed SET creator='%s' WHERE x=%f AND y=%f", str, x, y);
	mysql_query_callback(weedid, query, "mysql_update_weed_creator");
}
forward mysql_update_weed_creator(query[], index, extraid, connectionHandle);
public mysql_update_weed_creator(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_creator(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}
stock WeedGetCreator(weedid){
	return WeedInfo[weedid][wCreator];
}
stock WeedSelectCreator(query[], weedid, x, y){
	format(query, sizeof(query),"SELECT creator FROM samp_weed WHERE x=%f and y=%f", x, y);
	mysql_query_callback(weedid, query, "mysql_select_weed_creator");
}
forward mysql_select_weed_creator(query[], index, extraid, connectionHandle);
public mysql_select_weed_creator(query[], index, extraid, connectionHandle){
	mysql_store_result();
	if(mysql_num_rows() > 0){
		mysql_fetch_field_row(WeedInfo[index][wCreator], "creator");
	}else{}
	mysql_free_result();
}

stock WeedAlterObject(weedid, object){
	WeedInfo[weedid][wObject] = object;
}
stock WeedUpdateObject(query[], object, weedid, x, y){
	format(query, sizeof(query), "UPDATE samp_weed SET object=%i WHERE x=%f AND y=%f", object, x, y);
	mysql_query_callback(weedid, query, "mysql_update_weed_object");
}
forward mysql_update_weed_object(query[], index, extraid, connectionHandle);
public mysql_update_weed_object(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_object(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}
stock WeedGetObject(weedid){
	return WeedInfo[weedid][wObject];
}
stock WeedSelectObject(query[], weedid, x, y){
	format(query, sizeof(query),"SELECT object FROM samp_weed WHERE x=%f and y=%f", x, y);
	mysql_query_callback(weedid, query, "mysql_select_weed_object");
}
forward mysql_select_weed_object(query[], index, extraid, connectionHandle);
public mysql_select_weed_object(query[], index, extraid, connectionHandle){
	mysql_store_result();
	if(mysql_num_rows() > 0){
	    new str[11];
		mysql_fetch_field_row(str, "object");
		WeedInfo[index][wObject] = strval(str);
	}else{}
	mysql_free_result();
}

stock WeedAlterTime(weedid, time){
	WeedInfo[weedid][wTime] = time;
}
stock WeedUpdateTime(query[], time, weedid, x, y){
	format(query, sizeof(query), "UPDATE samp_weed SET time=%i WHERE x=%f AND y=%f", time, x, y);
	mysql_query_callback(weedid, query, "mysql_update_weed_time");
}
forward mysql_update_weed_time(query[], index, extraid, connectionHandle);
public mysql_update_weed_time(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_time(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}
stock WeedGetTime(weedid){
	return WeedInfo[weedid][wTime];
}
stock WeedSelectTime(query[], weedid, x, y){
	format(query, sizeof(query),"SELECT time FROM samp_weed WHERE x=%f and y=%f", x, y);
	mysql_query_callback(weedid, query, "mysql_select_weed_time");
}
forward mysql_select_weed_time(query[], index, extraid, connectionHandle);
public mysql_select_weed_time(query[], index, extraid, connectionHandle){
	mysql_store_result();
	if(mysql_num_rows() > 0){
	    new str[11];
		mysql_fetch_field_row(str, "time");
		WeedInfo[index][wTime] = strval(str);
	}else{}
	mysql_free_result();
}

stock WeedAlterSex(weedid, sex){
	WeedInfo[weedid][wSex] = sex;
}
stock WeedUpdateSex(query[], sex, weedid, x, y){
	format(query, sizeof(query), "UPDATE samp_weed SET sex=%i WHERE x=%f AND y=%f", sex, x, y);
	mysql_query_callback(weedid, query, "mysql_update_weed_sex");
}
forward mysql_update_weed_sex(query[], index, extraid, connectionHandle);
public mysql_update_weed_sex(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_sex(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}
stock WeedGetSex(weedid){
	return WeedInfo[weedid][wSex];
}
stock WeedSelectSex(query[], weedid, x, y){
	format(query, sizeof(query),"SELECT sex FROM samp_weed WHERE x=%f and y=%f", x, y);
	mysql_query_callback(weedid, query, "mysql_select_weed_sex");
}
forward mysql_select_weed_sex(query[], index, extraid, connectionHandle);
public mysql_select_weed_sex(query[], index, extraid, connectionHandle){
	mysql_store_result();
	if(mysql_num_rows() > 0){
	    new str[11];
		mysql_fetch_field_row(str, "sex");
		WeedInfo[index][wSex] = strval(str);
	}else{}
	mysql_free_result();
}

stock WeedAlterSeeds(weedid, seeds){
	WeedInfo[weedid][wSeeds] = seeds;
}
stock WeedUpdateSeeds(query[], seeds, weedid, x, y){
	format(query, sizeof(query), "UPDATE samp_weed SET seeds=%i WHERE x=%f AND y=%f", seeds, x, y);
	mysql_query_callback(weedid, query, "mysql_update_weed_seeds");
}
forward mysql_update_weed_seeds(query[], index, extraid, connectionHandle);
public mysql_update_weed_seeds(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_seeds(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}
stock WeedGetSeeds(weedid){
	return WeedInfo[weedid][wSeeds];
}
stock WeedSelectSeeds(query[], weedid, x, y){
	format(query, sizeof(query),"SELECT seeds FROM samp_weed WHERE x=%f and y=%f", x, y);
	mysql_query_callback(weedid, query, "mysql_select_weed_seeds");
}
forward mysql_select_weed_seeds(query[], index, extraid, connectionHandle);
public mysql_select_weed_seeds(query[], index, extraid, connectionHandle){
	mysql_store_result();
	if(mysql_num_rows() > 0){
	    new str[11];
		mysql_fetch_field_row(str, "seeds");
		WeedInfo[index][wSeeds] = strval(str);
	}else{}
	mysql_free_result();
}

stock WeedAlterWater(weedid, water){
	WeedInfo[weedid][wWater] = water;
}
stock WeedUpdateWater(query[], water, weedid, x, y){
	format(query, sizeof(query), "UPDATE samp_weed SET water=%i WHERE x=%f AND y=%f", water, x, y);
	mysql_query_callback(weedid, query, "mysql_update_weed_water");
}
forward mysql_update_weed_water(query[], index, extraid, connectionHandle);
public mysql_update_weed_water(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_water(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}
stock WeedGetWater(weedid){
	return WeedInfo[weedid][wWater];
}
stock WeedSelectWater(query[], water, x, y){
	format(query, sizeof(query),"SELECT water FROM samp_weed WHERE x=%f and y=%f", x, y);
	mysql_query_callback(weedid, query, "mysql_select_weed_water");
}
forward mysql_select_weed_water(query[], index, extraid, connectionHandle);
public mysql_select_weed_water(query[], index, extraid, connectionHandle){
	mysql_store_result();
	if(mysql_num_rows() > 0){
	    new str[11];
		mysql_fetch_field_row(str, "water");
		WeedInfo[index][wWater] = strval(str);
	}else{}
	mysql_free_result();
}

stock WeedAlterActive(weedid, active){
	WeedInfo[weedid][wActive] = active;
}
stock WeedUpdateActive(query[], active, weedid, x, y){
	format(query, sizeof(query), "UPDATE samp_weed SET active=%i WHERE x=%f AND y=%f", active, x, y);
	mysql_query_callback(weedid, query, "mysql_update_weed_active");
}
forward mysql_update_weed_active(query[], index, extraid, connectionHandle);
public mysql_update_weed_active(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_active(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}
stock WeedGetActive(weedid){
	return WeedInfo[weedid][wActive];
}
stock WeedSelectActive(query[], x, y){
	format(query, sizeof(query),"SELECT active FROM samp_weed WHERE x=%f and y=%f", x, y);
	mysql_query_callback(weedid, query, "mysql_select_weed_active");
}
forward mysql_select_weed_active(query[], index, extraid, connectionHandle);
public mysql_select_weed_active(query[], index, extraid, connectionHandle){
	mysql_store_result();
	if(mysql_num_rows() > 0){
	    new str[11];
		mysql_fetch_field_row(str, "active");
		WeedInfo[index][wActive] = strval(str);
	}else{}
	mysql_free_result();
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
stock WeedUpdateZ(query[], z, weedid, x, y){
	format(query, sizeof(query), "UPDATE samp_weed SET z=%f WHERE x=%f AND y=%f", z, x, y);
	mysql_query_callback(weedid, query, "mysql_update_weed_z");
}
forward mysql_update_weed_z(query[], index, extraid, connectionHandle);
public mysql_update_weed_z(query[], index, extraid, connectionHandle){
	printf("[QUERY]: mysql_update_weed_z(query[], index, extraid, connection handle);\
	has been executed for weed plant ID:[%i]", index);
}

stock WeedSelectZ(query[], water, x, y){
	format(query, sizeof(query),"SELECT z FROM samp_weed WHERE x=%f and y=%f", x, y);
	mysql_query_callback(weedid, query, "mysql_select_weed_z");
}
forward mysql_select_weed_z(query[], index, extraid, connectionHandle);
public mysql_select_weed_z(query[], index, extraid, connectionHandle){
	mysql_store_result();
	if(mysql_num_rows() > 0){
	    new str[11];
		mysql_fetch_field_row(str, "z");
		WeedInfo[index][wZ] = floatstr(str);
	}else{}
	mysql_free_result();
}

CMD:plant(playerid, params[]){
    new Float:X, Float:Y, Float:Z, Query[229], bool:out=false, i=0;
	while(!out){
		if(!WeedGetActive(i)){
			GetPlayerPos(playerid, X,Y,Z);
			CreateWeed(i, PlayerName(playerid), WEED_OBJECT, MAX_WEED_TIME, WEED_NOSEX, MAX_WEED_SEEDS, MAX_WEED_WATER, X, Y, Z-1.6094-1, WEED_ACTIVE);
			SetWeedNoMoreWater(i);
			WeedInfo[i][wObjectID] = CreateDynamicObject(WeedGetObject(i), WeedGetX(i), WeedGetY(i), WeedGetZ(i),0.00000000,0.00000000,0.00000000);
		    WeedInfo[i][wText3D] = CreateDynamic3DTextLabel("{00FF00}[{0000FF}|||||||||||||||||{FF0000}|{00FF00}]",0xffffffff, WeedGetX(i), WeedGetY(i), WeedGetZ(i), 3.0);
		    out=true;
			MySQL_InsertWeed(Query, i, PlayerName(playerid), WeedGetObject(i), WeedGetTime(i), WeedGetSex(i), WeedGetSeeds(i), WeedGetWater(i), WeedGetX(i), WeedGetY(i), WeedGetZ(i)-1-1.6094, WeedGetActive(i));
		}
		else{
		    i++;
		    if(i == MAX_WEED-1){
		        SendClientMessage(playerid, 0xfffffffff, "SERVER: Max ammount of weed plants reached, contact an administrator.");
				out=true;
			}
		}
	}
	return 1;
}

stock LoadWeedData(){
	for(new i=0; i < MAX_WEED; i++)
	    WeedInfo[i][wActive] = WEED_INACTIVE;
	mysql_query_callback(0, "SELECT * FROM samp_weed ORDER BY id", "mysql_load_weed_data");
}

forward mysql_load_weed_data(query[], index, extraid, connectionHandle);
public mysql_load_weed_data(query[], index, extraid, connectionHandle){
	mysql_store_result();
	new AuxWeedInfo[MAX_WEED][wInfo];
	while( mysql_fetch_row_format(query, "|") ){
		sscanf(query, "p<|>e<s[24]iiiiifffiiii>", AuxWeedInfo[index]);
		AuxWeedInfo[index][wObjectID] = CreateDynamicObject(AuxWeedInfo[index][wObject], AuxWeedInfo[index][wX], AuxWeedInfo[index][wY], AuxWeedInfo[index][wZ],0.00000000,0.00000000,0.00000000,-1);
		AuxWeedInfo[index][wText3D] = CreateDynamic3DTextLabel("{00FF00}[{0000FF}|||||||||||||||||{FF0000}|{00FF00}]",0xffffffff, AuxWeedInfo[index][wX], AuxWeedInfo[index][wY], AuxWeedInfo[index][wZ], 3.0);
		index++;
	}
	print("GOT INSIDE TO LOAD DATA");
	for(new i = 0,j=0; i < MAX_WEED; i++){
	    if(AuxWeedInfo[j][wID] == i){
	        //print("GOT INSIDE TO LOAD DATA");
			strcpy(WeedInfo[j][wCreator], AuxWeedInfo[j][wCreator], MAX_PLAYER_NAME);
			printf("NAME: %s", WeedInfo[j][wCreator]);
			
			WeedInfo[j][wObject] = AuxWeedInfo[j][wObject];
			printf("Object: %i", WeedInfo[j][wObject]);
			
			WeedInfo[j][wTime] = AuxWeedInfo[j][wTime];
			printf("Time: %i", WeedInfo[j][wTime]);
			
			WeedInfo[j][wSex] = AuxWeedInfo[j][wSex];
			printf("Sex: %i", WeedInfo[j][wSex]);
			
			WeedInfo[j][wSeeds] = AuxWeedInfo[j][wSeeds];
			printf("Seeds: %i", WeedInfo[j][wSeeds]);
			
			WeedInfo[j][wWater] = AuxWeedInfo[j][wWater];
			printf("Water: %i", WeedInfo[j][wWater]);
			
			WeedInfo[j][wX] = AuxWeedInfo[j][wX];
			printf("X: %f", WeedInfo[j][wX]);
			
            WeedInfo[j][wY] = AuxWeedInfo[j][wY];
            printf("Y: %f", WeedInfo[j][wY]);
            
            WeedInfo[j][wZ] = AuxWeedInfo[j][wZ];
            printf("Z: %f", WeedInfo[j][wZ]);
            
			WeedInfo[j][wActive] = AuxWeedInfo[j][wActive];
			printf("Active: %i", WeedInfo[j][wActive]);
			
			WeedInfo[j][wFucked] = AuxWeedInfo[j][wFucked];
			printf("Fucked: %i", WeedInfo[j][wFucked]);
			
			WeedInfo[j][wWatered] = AuxWeedInfo[j][wWatered];
			printf("Watered: %i", WeedInfo[j][wWatered]);
			
			WeedInfo[j][wID] = AuxWeedInfo[j][wID];
			printf("ID: %i", WeedInfo[j][wID]);
			
			SetWeedNoMoreWater(j);
			//print("GOT INSIDE TO LOAD DATA");
			WeedInfo[j][wObjectID] =  AuxWeedInfo[j][wObjectID];
			printf("ObjectID: %i", WeedInfo[j][wObjectID]);
			//print("GOT INSIDE TO LOAD DATA AFTER");
    		WeedInfo[j][wText3D] = AuxWeedInfo[j][wText3D];
    		j++;
	    }
	}
	mysql_free_result();
}

CMD:gotoweed(playerid,params[]){
	SetPlayerPos(playerid, WeedInfo[0][wX],WeedInfo[0][wY],WeedInfo[0][wZ]);
	return 1;
}

stock strcpy(dest[], const source[], maxlength=sizeof dest)
{
    strcat((dest[0] = EOS, dest), source, maxlength);
}
