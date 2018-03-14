// [PLUGIN]: dataHandler (C) 2013

#if defined dataHandler
	#endinput
#endif
#define dataHandler

native newPlayerElement(playerid);
native erasePlayerElement(playerid);
native givePlayerItem(playerid, itemID, iType, iVar);
native removePlayerItem(playerid, iID);
native getPlayerItemAmount(playerid, iType);
native getItemID(playerid, index);
native getItemType(playerid, index);
native getItemVar(playerid, index);
native getItemPage(playerid, str[], len = sizeof(str), page = 1);
native itemIndexExists(playerid, index);
native getItemTypeFromVar(playerid, var);
native getItemTempVarFromVar(playerid, var, tempIdx = 0);
native setItemTempVar(playerid, index, tempVar, tempIdx = 0);
native getItemTempVar(playerid, index, tempIdx = 0);
native removePlayerItemType(playerid, type);
native setItemVariable(playerid, index, variable);
native getPlayerItemID(playerid, type);
native getItemVarFromID(playerid, id);
native setItemVariableByID(playerid, id, var);
native itemInPossession(playerid, type);
native getFirstItemIndex(playerid, type);
native getPhoneIndexFromOccurance(playerid, phoneID);
native getPhoneVarFromOccurance(playerid, phoneID);