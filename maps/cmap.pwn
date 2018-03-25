// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>
#include <streamer>

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" prison-remove Filterscript by Max");
	print("--------------------------------------\n");
	

	return 1;
}


{
	new myobject = CreateObject(19353, 0, 0, 10, 0.0, 0.0, 90.0); //create the object
	SetObjectMaterialText(myobject, "SA-MP {FFFFFF}0.3{008500}e {FF8200}RC7", 0, OBJECT_MATERIAL_SIZE_256x128,\
	"Arial", 28, 0, 0xFFFF8200, 0xFF000000, OBJECT_MATERIAL_TEXT_ALIGN_CENTER);
	// write "SA-MP 0.3e RC7" on the object, with orange font color and black background
	return 1;
)
public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" Blank Gamemode by your name here");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
	// Don't use these lines if it's a filterscript
	SetGameModeText("Blank Script");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	// GLEN PARK ESTATE //
	RemoveBuildingForPlayer(playerid, 4606, 1825.0000, -1413.9297, 12.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 4608, 1773.2734, -1368.2734, 18.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4609, 1777.8906, -1376.8906, 20.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 4610, 1747.4375, -1361.5078, 21.0313, 0.25);
	RemoveBuildingForPlayer(playerid, 1531, 1746.7500, -1359.7734, 16.2109, 0.25);
	RemoveBuildingForPlayer(playerid, 4758, 1726.7031, -1313.8125, 33.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 4759, 1748.9297, -1420.2813, 41.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1261, 1726.3984, -1313.0625, 28.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 1266, 1748.8438, -1420.4453, 35.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 3782, 1803.0859, -1294.2031, 34.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 3782, 1803.0859, -1294.2031, 61.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 3782, 1803.0859, -1294.2031, 88.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 3782, 1803.0859, -1294.2031, 116.0313, 0.25);
	RemoveBuildingForPlayer(playerid, 4761, 1803.0859, -1294.2031, 71.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 4762, 1823.6875, -1291.2500, 7.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1728.1719, -1428.3750, 15.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1727.6172, -1423.7656, 14.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1783.0391, -1440.3438, 13.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1773.5234, -1437.0391, 13.0625, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1762.7188, -1433.5859, 13.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 1260, 1748.8438, -1420.4453, 35.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 4731, 1748.9297, -1420.2813, 41.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1783.2031, -1427.5234, 17.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1793.6172, -1420.6875, 17.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1727.8359, -1417.7969, 15.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1789.1250, -1413.3125, 15.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 4594, 1825.0000, -1413.9297, 12.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1727.6172, -1411.3359, 13.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1727.8359, -1405.5391, 15.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1727.6172, -1399.6797, 14.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1727.8359, -1393.6719, 15.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 674, 1740.3672, -1388.0625, 13.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1740.4609, -1386.5234, 13.8281, 0.25);
	RemoveBuildingForPlayer(playerid, 674, 1749.5156, -1388.0000, 14.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1749.9063, -1386.4375, 14.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 4714, 1754.5391, -1389.0859, 15.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 674, 1758.0469, -1387.9141, 15.2969, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1758.7266, -1386.2578, 15.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 674, 1768.1484, -1387.6094, 15.2969, 0.25);
	RemoveBuildingForPlayer(playerid, 4559, 1773.2734, -1368.2734, 18.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4560, 1777.8906, -1376.8906, 20.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1789.1250, -1402.1563, 15.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 955, 1789.2109, -1369.2656, 15.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1809.8984, -1384.4688, 15.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1813.1641, -1384.4688, 15.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1831.3594, -1384.4688, 15.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1815.6406, -1382.2031, 13.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1827.9609, -1377.7266, 13.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1831.9609, -1381.0703, 13.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1788.9844, -1363.0703, 15.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1827.8906, -1363.0000, 13.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 4558, 1747.4375, -1361.5078, 21.0313, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, 1787.0469, -1360.9063, 14.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, 1787.0781, -1357.2656, 14.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1831.3594, -1359.0938, 15.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 674, 1754.5391, -1350.0781, 14.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 674, 1759.8047, -1350.0781, 14.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, 1787.0469, -1353.7813, 14.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1789.8672, -1353.2656, 15.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, 1791.4766, -1351.6406, 14.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1800.5469, -1353.2109, 14.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1831.2813, -1354.1016, 14.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1827.8906, -1344.8984, 13.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1831.3594, -1348.4922, 15.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 1267, 1726.3984, -1313.0625, 28.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 4730, 1726.7031, -1313.8125, 33.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1738.9609, -1342.5703, 15.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1750.1328, -1342.5859, 15.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1760.7969, -1342.5859, 15.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1769.1641, -1342.6094, 15.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1779.6797, -1342.6094, 15.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1790.0859, -1342.6094, 15.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1800.5469, -1342.6094, 14.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1813.9453, -1323.3516, 15.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1828.0000, -1330.4141, 13.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1831.6953, -1326.8906, 13.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 1215, 1820.0859, -1326.1563, 13.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1817.2109, -1323.3516, 15.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1831.3594, -1323.4844, 15.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 4587, 1803.0859, -1294.2031, 71.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 3781, 1803.0859, -1294.2031, 34.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 3781, 1803.0859, -1294.2031, 61.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 3781, 1803.0859, -1294.2031, 88.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 3781, 1803.0859, -1294.2031, 116.0313, 0.25);
	RemoveBuildingForPlayer(playerid, 4605, 1823.6875, -1291.2500, 7.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 3563, 2155.1016, -1400.4688, 27.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 3562, 2151.3359, -1470.2734, 27.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 3563, 2156.1328, -1446.1875, 27.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3560, 2132.2500, -1276.9453, 26.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 3721, 1956.9844, -1072.5000, 25.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 3721, 1936.6484, -1069.0000, 25.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 3721, 1914.7500, -1067.6641, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 3721, 1893.9063, -1067.6641, 25.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 3720, 1955.7656, -1110.7969, 28.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 3720, 1921.9453, -1110.5859, 28.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 3718, 1939.6641, -1111.0625, 29.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 3719, 1905.2813, -1109.5234, 29.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 3720, 1886.5234, -1109.0859, 27.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 739, 2011.2266, -1218.9844, 19.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 739, 1864.7656, -1224.8906, 15.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 5466, 1881.7969, -1315.5391, 37.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 739, 2096.5234, -1427.0781, 22.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 3719, 2095.6641, -1165.7734, 29.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 3720, 2096.1797, -1184.9375, 28.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 3718, 2098.7813, -1145.7578, 28.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 3720, 2098.5625, -1123.3125, 28.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 5575, 1919.5234, -1400.8984, 16.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 5597, 2011.4688, -1300.8984, 28.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 5598, 1914.2109, -1300.0547, 30.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 740, 1869.9688, -1204.5547, 16.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 740, 2083.9375, -1481.5156, 14.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 740, 2025.1406, -1244.5078, 22.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 5632, 2161.0781, -1131.6797, 31.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 5636, 2042.1797, -1346.8047, 24.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 5637, 2043.8984, -1138.3906, 31.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 5638, 2184.5000, -1179.3281, 36.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 5641, 1924.7656, -1139.7656, 27.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 1525, 1974.0859, -1351.1641, 24.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 1525, 1969.5938, -1289.6953, 24.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 1525, 1966.9453, -1174.7266, 20.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 1525, 1911.8672, -1064.3984, 25.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3560, 2110.9609, -1247.5000, 26.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 3562, 2090.9375, -1239.7188, 27.0859, 0.25);
	RemoveBuildingForPlayer(playerid, 3560, 2154.0234, -1419.0391, 26.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 5665, 1913.3984, -1288.2969, 31.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 3718, 2023.4766, -1116.8438, 28.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 3720, 2040.9297, -1116.0078, 27.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 3561, 2154.2422, -1433.9219, 27.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 5671, 1996.3984, -1110.7891, 30.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 5672, 2134.6953, -1239.5313, 25.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 3772, 2153.8047, -1484.7734, 28.9219, 0.25);
	RemoveBuildingForPlayer(playerid, 1261, 1864.2422, -1273.8281, 41.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 1261, 1862.9609, -1449.0547, 26.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1266, 1976.9453, -1426.9922, 24.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 1266, 1907.4922, -1353.4063, 20.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 1266, 1978.1484, -1371.1484, 31.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 714, 1906.4141, -1152.2578, 22.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 708, 1966.7109, -1360.0938, 17.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 714, 2118.4766, -1369.5938, 22.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 710, 1940.5234, -1169.4609, 33.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 710, 1910.2969, -1205.0000, 33.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 710, 1931.8984, -1171.5078, 33.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1971.8203, -1411.8750, 14.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, 1856.3984, -1398.2656, 15.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 5390, 1919.5234, -1400.8984, 16.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 5415, 1916.9375, -1400.8906, 19.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 5663, 1919.4453, -1400.8828, 19.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1958.8828, -1395.1953, 13.3281, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1837.1328, -1369.9844, 12.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 5400, 1913.1328, -1370.5000, 17.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1933.2422, -1376.1719, 13.3281, 0.25);
	RemoveBuildingForPlayer(playerid, 1260, 1907.5000, -1353.4063, 20.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1861.7422, -1330.8906, 12.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 5463, 1881.7969, -1315.5391, 37.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 5644, 1881.8203, -1315.9219, 30.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 5464, 1902.4297, -1309.5391, 29.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 5462, 1914.2109, -1300.0547, 30.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1970.5078, -1328.3203, 23.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1260, 1978.1484, -1371.1484, 31.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2007.3438, -1330.9609, 23.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2003.4375, -1328.3203, 23.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1989.6641, -1328.0859, 22.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 5461, 2011.4688, -1300.8984, 28.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 5631, 2011.4063, -1302.9453, 28.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2039.1094, -1327.9766, 22.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2057.1328, -1311.2891, 23.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2055.0938, -1311.7813, 23.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2057.1094, -1302.3906, 23.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2089.2344, -1371.6172, 23.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2089.2344, -1366.1641, 23.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2089.2344, -1360.7109, 23.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2089.2344, -1355.2578, 23.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2089.2344, -1349.8125, 23.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1267, 1864.2422, -1273.8281, 41.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1966.3281, -1270.7422, 23.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1964.0703, -1261.4453, 25.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1987.3984, -1260.3828, 26.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1861.7891, -1251.0078, 12.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1905.7969, -1248.5234, 12.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1908.9766, -1251.0156, 12.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1932.2422, -1229.8594, 18.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1935.9453, -1225.0938, 18.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 1928.7891, -1222.8906, 18.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1935.6875, -1217.3516, 17.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 1907.6953, -1210.7656, 16.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 1906.6875, -1199.1406, 19.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1953.2656, -1234.1797, 17.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 5465, 1993.2969, -1284.9375, 26.7344, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2008.6328, -1271.3125, 23.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1989.7031, -1251.4531, 23.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2004.3516, -1240.0938, 20.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2033.7813, -1250.9844, 23.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2029.7500, -1227.7031, 19.7656, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1990.1250, -1226.6875, 19.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2036.6953, -1214.1875, 21.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2009.7422, -1212.5156, 17.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2018.4297, -1206.6563, 19.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2020.3672, -1210.8125, 20.4141, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2024.5703, -1211.5781, 20.8281, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2054.6797, -1281.5781, 22.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2048.6016, -1232.8906, 21.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2050.3906, -1208.3516, 21.8125, 0.25);
	RemoveBuildingForPlayer(playerid, 3582, 2090.9375, -1239.7188, 27.0859, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1927.5156, -1191.4922, 18.8125, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1989.0469, -1171.1172, 19.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1880.1250, -1152.1328, 20.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1902.8047, -1145.6328, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1947.0078, -1145.4766, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1991.5078, -1145.5391, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1989.7344, -1153.8984, 18.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1926.2109, -1125.8984, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 3642, 1921.9453, -1110.5859, 28.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 3640, 1905.2813, -1109.5234, 29.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 3642, 1886.5234, -1109.0859, 27.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 3642, 1955.7656, -1110.7969, 28.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 3639, 1939.6641, -1111.0625, 29.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1937.2344, -1073.0391, 23.4609, 0.25);
	RemoveBuildingForPlayer(playerid, 3641, 1956.9844, -1072.5000, 25.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1879.1797, -1070.8750, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1915.0859, -1069.2344, 23.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1880.6953, -1069.2109, 23.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 3641, 1914.7500, -1067.6641, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 3641, 1893.9063, -1067.6641, 25.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 1894.7188, -1062.9688, 22.7891, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1914.6484, -1063.5078, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1926.4219, -1052.8516, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 3641, 1936.6484, -1069.0000, 25.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1956.9688, -1065.9219, 23.4609, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 1935.8438, -1064.3828, 23.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2043.2578, -1187.0781, 21.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1998.6328, -1177.2188, 17.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2022.5781, -1176.9766, 20.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2017.0313, -1172.1953, 20.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2038.8125, -1168.6250, 21.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1998.6641, -1168.8828, 19.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2040.1328, -1158.0938, 22.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2010.3750, -1153.4297, 21.0625, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2028.6406, -1150.9297, 21.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2025.0547, -1145.6406, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 3639, 2023.4766, -1116.8438, 28.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 3642, 2040.9297, -1116.0078, 27.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 5520, 1996.3984, -1110.7891, 30.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2046.6719, -1160.6719, 22.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2053.6328, -1112.3281, 24.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2081.7578, -1149.6250, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2089.0234, -1127.4609, 24.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2091.5391, -1177.8359, 22.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2093.2969, -1157.6250, 24.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2093.0859, -1136.9531, 23.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 3640, 2095.6641, -1165.7734, 29.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 3642, 2096.1797, -1184.9375, 28.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1858.1875, -1439.6875, 11.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 1267, 1862.9609, -1449.0547, 26.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1897.0234, -1451.2266, 12.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 5660, 1916.0547, -1426.2422, 16.0313, 0.25);
	RemoveBuildingForPlayer(playerid, 1260, 1976.9453, -1426.9922, 24.6563, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2099.0859, -1412.4141, 22.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2122.6250, -1414.0547, 22.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2122.6250, -1414.0547, 22.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 1446, 2142.1719, -1406.3203, 25.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 1446, 2146.8125, -1406.3203, 25.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2122.4531, -1404.3594, 22.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1446, 2139.8047, -1404.1797, 25.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 1446, 2139.8047, -1399.5703, 25.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 3555, 2155.1016, -1400.4688, 27.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2122.4219, -1394.9766, 22.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 2104.1953, -1380.1641, 26.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2144.1328, -1396.9531, 24.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2100.2734, -1374.1016, 23.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2110.3750, -1371.6172, 23.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2110.3750, -1366.1641, 23.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2110.3672, -1360.7109, 23.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1224, 2111.6250, -1362.6406, 23.5000, 0.25);
	RemoveBuildingForPlayer(playerid, 1221, 2111.4531, -1364.6094, 23.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 2111.5000, -1360.5313, 23.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1221, 2112.2109, -1360.1250, 23.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 2113.6719, -1362.5078, 23.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 2112.1719, -1359.5313, 23.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 2114.3359, -1361.5156, 23.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 3557, 2132.2500, -1276.9453, 26.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 5635, 2182.2891, -1324.7500, 28.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2139.5391, -1250.8828, 23.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3557, 2110.9609, -1247.5000, 26.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 5416, 2134.6953, -1239.5313, 25.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2108.2188, -1181.0078, 22.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 3639, 2098.7813, -1145.7578, 28.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2111.1641, -1137.0000, 23.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2110.2891, -1154.7344, 25.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 3642, 2098.5625, -1123.3125, 28.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2100.5703, -1115.6094, 25.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2122.6250, -1487.4297, 22.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2122.8906, -1480.3203, 22.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2122.6250, -1470.9141, 22.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 3580, 2153.8047, -1484.7734, 28.9219, 0.25);
	RemoveBuildingForPlayer(playerid, 3582, 2151.3359, -1470.2734, 27.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2144.2266, -1467.0156, 23.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2138.9297, -1467.6797, 23.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2122.6250, -1451.3438, 22.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2122.4688, -1444.1406, 22.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2122.6250, -1434.2969, 22.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2141.9922, -1461.4609, 24.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2141.9922, -1461.4609, 24.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2138.9297, -1433.5781, 23.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 1410, 2145.7422, -1437.8906, 25.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1410, 2148.0078, -1435.6328, 25.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1410, 2145.7422, -1428.3516, 25.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1410, 2148.0078, -1430.6953, 25.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 3555, 2156.1328, -1446.1875, 27.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3556, 2154.2422, -1433.9219, 27.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 3557, 2154.0234, -1419.0391, 26.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 5565, 2171.4531, -1448.4219, 28.8047, 0.25);
	CreateDynamicObject(7191, 1977.15, -1428.48, 14.37,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.06, -1416.58, 15.38,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1861.85, -1373.32, 14.05,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1861.68, -1428.55, 14.05,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1954.63, -1450.98, 14.33,   0.00, 0.00, -90.00);
	CreateDynamicObject(7191, 1884.57, -1450.68, 14.33,   0.00, 0.00, -90.00);
	CreateDynamicObject(7191, 1977.07, -1396.48, 19.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.08, -1405.48, 17.12,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.07, -1385.98, 23.76,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.08, -1372.98, 23.76,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.06, -1372.98, 19.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.06, -1372.98, 15.93,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.06, -1372.98, 11.97,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1976.77, -1351.26, -73.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1976.96, -1394.85, -73.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1976.96, -1407.96, -73.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1976.96, -1419.55, -77.41,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1976.96, -1427.95, -80.14,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1976.96, -1439.54, -81.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1976.96, -1450.46, -82.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.12, -1416.58, 11.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1954.25, -1350.84, 23.72,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1940.48, -1350.85, 21.22,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1896.22, -1350.84, 17.32,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1940.67, -1350.84, 17.29,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1883.71, -1350.83, 14.14,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1928.21, -1350.84, 13.35,   0.00, 0.00, 90.00);
	CreateDynamicObject(18770, 1932.70, -1351.17, -73.73,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1918.56, -1351.17, -76.24,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1906.47, -1351.17, -79.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1874.66, -1351.17, -79.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.80, -1351.17, -82.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1985.48, -1350.85, 20.50,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1940.57, -1350.77, 13.35,   0.00, 0.00, 90.00);
	CreateDynamicObject(18770, 1963.53, -1351.17, -73.36,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1950.15, -1351.12, -73.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1976.96, -1374.17, -73.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1890.97, -1351.17, -79.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.80, -1395.83, -82.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.80, -1372.35, -82.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.80, -1427.40, -82.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.80, -1407.38, -82.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1931.92, -1450.85, -82.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1953.48, -1450.85, -82.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1907.67, -1450.85, -82.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1886.10, -1450.85, -82.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1977.15, -1428.48, 10.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(8391, 2140.07, 1581.57, 26.79,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.85, -1450.85, -82.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1908.99, -1450.68, 14.33,   0.00, 0.00, -90.00);
	CreateDynamicObject(18772, 1986.23, -1396.25, 9.84,   0.00, 0.00, 90.00);
	CreateDynamicObject(7929, 1872.32, -1374.04, 19.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(8843, 1860.23, -1400.06, 12.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(8843, 1876.39, -1399.33, 12.58,   0.00, 0.00, 90.00);
	CreateDynamicObject(8843, 1876.39, -1403.94, 12.58,   0.00, 0.00, -90.00);
	CreateDynamicObject(3483, 1897.43, -1374.08, 19.54,   0.00, 0.00, 0.00);
	CreateDynamicObject(3485, 1932.94, -1373.95, 19.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(3486, 1963.11, -1374.37, 19.56,   0.00, 0.00, -1.50);
	CreateDynamicObject(3446, 1870.87, -1426.20, 15.92,   0.00, 0.00, 180.00);
	CreateDynamicObject(3445, 1889.07, -1426.20, 15.49,   0.00, 0.00, 180.00);
	CreateDynamicObject(7929, 1908.38, -1428.43, 19.12,   0.00, 0.00, 180.00);
	CreateDynamicObject(3486, 1933.71, -1428.47, 19.44,   0.00, 0.00, 180.00);
	CreateDynamicObject(3488, 1966.54, -1428.39, 18.99,   0.00, 0.00, 180.00);
	CreateDynamicObject(18772, 1971.82, -1326.06, 9.75,   0.00, 0.00, 0.00);
	CreateDynamicObject(8843, 1947.48, -1399.66, 12.58,   0.00, 0.00, 90.00);
	CreateDynamicObject(8843, 1947.48, -1403.87, 12.58,   0.00, 0.00, -90.00);
	CreateDynamicObject(7894, 1974.86, -1401.69, 12.99,   0.00, 0.00, 90.00);
	CreateDynamicObject(7894, 1974.84, -1401.69, 13.97,   0.00, 0.00, 90.00);
	CreateDynamicObject(1232, 1975.43, -1410.96, 15.19,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1956.45, -1410.81, 15.19,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1918.81, -1410.70, 15.21,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1898.20, -1410.70, 15.14,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1880.37, -1410.94, 15.18,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1861.77, -1407.38, 16.09,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1861.85, -1395.72, 16.09,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1882.71, -1392.11, 15.22,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1912.00, -1392.09, 15.12,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1947.37, -1392.26, 15.22,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1975.85, -1392.15, 15.10,   356.86, 0.00, 3.14);
	CreateDynamicObject(4571, 1892.96, -1431.23, -51.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1947.14, -1431.55, -51.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1947.61, -1368.61, -51.49,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1892.80, -1370.36, -51.48,   0.00, 0.00, 0.00);
	CreateDynamicObject(620, 1863.93, -1439.77, 10.02,   356.86, 0.00, -1.57);
	CreateDynamicObject(620, 1922.90, -1387.76, 10.02,   357.00, 0.00, 4.00);
	CreateDynamicObject(620, 1885.13, -1358.94, 10.02,   357.00, 0.00, -149.00);
	CreateDynamicObject(620, 1942.14, -1443.93, 5.29,   357.00, 0.00, -193.00);
	CreateDynamicObject(673, 1947.93, -1414.02, 11.67,   356.86, 0.00, 3.14);
	CreateDynamicObject(673, 1909.94, -1388.91, 13.10,   357.00, 0.00, 62.00);
	CreateDynamicObject(673, 1897.00, -1412.25, 13.10,   357.00, 0.00, -55.00);
	CreateDynamicObject(1660, 1849.86, -1399.26, 4.21,   26.23, 0.00, -90.00);
	CreateDynamicObject(1660, 1849.85, -1404.53, 4.21,   26.23, 0.00, -90.00);
	CreateDynamicObject(4571, 1942.12, -1373.18, -51.47,   0.00, 0.00, -1.22);
	CreateDynamicObject(7191, 1985.27, -1350.80, 16.57,   0.00, 0.00, 90.00);
	CreateDynamicObject(4571, 1946.55, -1430.07, -51.54,   0.00, 0.00, 0.00);
	CreateDynamicObject(1232, 1948.70, -1410.80, 15.22,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1917.80, -1392.19, 15.18,   356.86, 0.00, 3.14);
	CreateDynamicObject(1652, 1948.76, -1424.35, 13.12,   180.00, 0.00, 90.00);
	CreateDynamicObject(1652, 1948.75, -1432.36, 13.11,   180.00, 0.00, 90.00);
	CreateDynamicObject(4571, 1949.26, -1328.84, -51.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(18772, 1986.23, -1406.63, 9.82,   0.00, 0.00, 90.00);
	CreateDynamicObject(18770, 1961.87, -1392.09, 11.62,   0.00, 90.00, 0.00);
	CreateDynamicObject(18770, 1961.87, -1410.89, 11.62,   0.00, 90.00, 0.00);
	CreateDynamicObject(18770, 1961.87, -1406.91, 11.22,   45.00, 90.00, 0.00);
	CreateDynamicObject(18770, 1961.87, -1396.41, 11.22,   45.00, 90.00, 0.00);
	CreateDynamicObject(1232, 1861.82, -1351.48, 16.09,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1861.81, -1450.93, 16.09,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1976.91, -1450.47, 16.09,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1976.79, -1351.34, 25.12,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1918.50, -1357.28, 15.18,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1912.25, -1357.25, 15.18,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1956.27, -1444.86, 15.19,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1948.44, -1445.17, 15.19,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1898.19, -1445.13, 15.19,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1948.30, -1358.10, 15.18,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1882.66, -1357.29, 15.18,   356.86, 0.00, 3.14);
	CreateDynamicObject(1652, 1948.75, -1432.36, 13.11,   180.00, 0.00, -90.00);
	CreateDynamicObject(1652, 1948.76, -1424.35, 13.12,   180.00, 0.00, -90.00);
	CreateDynamicObject(1652, 1968.31, -1391.09, 13.32,   180.00, 0.00, 0.00);
	CreateDynamicObject(1652, 1968.31, -1391.09, 13.32,   180.00, 0.00, 180.00);
	CreateDynamicObject(1652, 1917.84, -1370.24, 13.19,   180.00, 0.00, 90.00);
	CreateDynamicObject(1652, 1917.84, -1370.24, 13.19,   180.00, 0.00, -90.00);
	CreateDynamicObject(1652, 1917.84, -1378.22, 13.19,   180.00, 0.00, -90.00);
	CreateDynamicObject(1652, 1917.84, -1378.22, 13.19,   180.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1966.13, -1308.42, 24.74,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1966.14, -1308.42, 20.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1966.13, -1308.42, 16.86,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1966.14, -1308.42, 12.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1883.71, -1330.83, 14.14,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1928.21, -1330.83, 12.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1883.71, -1350.83, 14.14,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1943.71, -1330.83, 20.84,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1928.21, -1330.83, 16.88,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1883.71, -1270.83, 14.14,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1928.21, -1270.83, 12.93,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1928.21, -1270.83, 16.89,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1943.71, -1270.83, 20.79,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1943.71, -1330.83, 24.78,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1943.71, -1270.83, 24.76,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1966.16, -1292.90, 24.74,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1966.14, -1292.92, 20.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1966.15, -1292.92, 16.86,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1966.14, -1292.92, 12.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1943.71, -1330.84, 17.55,   0.00, 0.00, 90.00);
	CreateDynamicObject(18770, 1965.59, -1330.47, -72.43,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1965.59, -1270.75, -72.42,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1950.16, -1330.47, -72.34,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1922.44, -1330.47, -72.36,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1906.37, -1330.47, -80.31,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.96, -1330.47, -83.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1876.76, -1330.47, -83.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1892.51, -1330.47, -83.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1965.59, -1287.00, -72.42,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1965.59, -1315.03, -72.42,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1906.37, -1270.43, -80.31,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1892.51, -1270.43, -83.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1876.76, -1270.43, -83.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.96, -1270.43, -83.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1922.44, -1270.43, -72.36,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1950.16, -1270.43, -72.34,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1861.56, -1292.42, 12.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1861.96, -1314.50, -83.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1949.28, -1290.10, -51.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1888.47, -1312.78, -51.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1888.47, -1288.21, -51.48,   0.00, 0.00, 0.00);
	CreateDynamicObject(18772, 1927.06, -1211.05, 9.89,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1943.71, -1330.84, 13.61,   0.00, 0.00, 90.00);
	CreateDynamicObject(3445, 1946.65, -1319.49, 15.61,   0.00, 0.00, -90.00);
	CreateDynamicObject(7929, 1949.29, -1299.74, 19.20,   0.00, 0.00, -90.00);
	CreateDynamicObject(18772, 1986.83, -1322.97, 9.87,   0.00, 0.00, 90.00);
	CreateDynamicObject(6284, 1947.86, -1269.77, 16.70,   0.00, 0.00, -90.00);
	CreateDynamicObject(7929, 1872.18, -1298.42, 19.21,   0.00, 0.00, 0.00);
	CreateDynamicObject(3488, 1892.86, -1298.40, 19.04,   0.00, 0.00, 0.00);
	CreateDynamicObject(3487, 1913.36, -1298.40, 19.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1961.80, -1329.21, 11.64,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1864.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1869.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1874.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1879.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1884.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1889.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1894.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1899.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1904.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1909.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1914.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1919.38, -1316.30, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18763, 1923.38, -1315.31, 11.12,   0.00, 90.00, 90.00);
	CreateDynamicObject(18763, 1923.38, -1310.31, 11.12,   0.00, 90.00, 90.00);
	CreateDynamicObject(18763, 1923.38, -1305.31, 11.12,   0.00, 90.00, 90.00);
	CreateDynamicObject(18763, 1923.38, -1300.31, 11.12,   0.00, 90.00, 90.00);
	CreateDynamicObject(18763, 1923.38, -1295.31, 11.12,   0.00, 90.00, 90.00);
	CreateDynamicObject(18763, 1923.38, -1290.31, 11.12,   0.00, 90.00, 90.00);
	CreateDynamicObject(18763, 1923.38, -1285.31, 11.12,   0.00, 90.00, 90.00);
	CreateDynamicObject(18763, 1922.38, -1282.78, 11.12,   0.00, 90.00, 0.00);
	CreateDynamicObject(18770, 1931.30, -1230.11, 11.61,   0.00, 90.00, 90.00);
	CreateDynamicObject(18770, 1961.80, -1271.71, 11.64,   0.00, 90.00, 0.00);
	CreateDynamicObject(1232, 1861.79, -1330.41, 15.51,   356.86, 0.00, 180.00);
	CreateDynamicObject(1232, 1861.77, -1314.68, 15.45,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1861.94, -1270.57, 15.55,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1965.51, -1330.51, 26.40,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1965.61, -1270.82, 26.99,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1882.30, -1316.20, 15.25,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1902.88, -1316.18, 15.25,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1923.64, -1315.87, 15.25,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1931.68, -1310.03, 15.25,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1931.83, -1291.25, 15.25,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1931.76, -1271.78, 15.25,   356.86, 0.00, 3.14);
	CreateDynamicObject(1232, 1923.52, -1328.98, 15.25,   356.86, 0.00, 180.00);
	CreateDynamicObject(1232, 1902.88, -1329.18, 15.25,   356.86, 0.00, 180.00);
	CreateDynamicObject(1232, 1882.30, -1329.20, 15.25,   356.86, 0.00, 180.00);
	CreateDynamicObject(1232, 1931.59, -1327.20, 15.25,   356.86, 0.00, 180.00);
	CreateDynamicObject(1232, 1924.37, -1281.72, 15.25,   356.86, 0.00, 3.14);
	CreateDynamicObject(620, 1935.05, -1312.12, 10.02,   357.00, 0.00, -149.00);
	CreateDynamicObject(620, 1951.30, -1291.99, 5.50,   357.00, 0.00, -91.00);
	CreateDynamicObject(620, 1863.27, -1285.03, 2.57,   357.00, 0.00, -11.00);
	CreateDynamicObject(673, 1880.91, -1314.20, 13.10,   357.00, 0.00, -55.00);
	CreateDynamicObject(673, 1936.97, -1327.68, 13.10,   357.00, 0.00, -135.00);
	CreateDynamicObject(673, 1934.51, -1290.69, 13.10,   357.00, 0.00, -69.00);
	CreateDynamicObject(7191, 1943.71, -1270.85, 16.84,   0.00, 0.00, 90.00);
	CreateDynamicObject(7191, 1943.71, -1270.82, 12.89,   0.00, 0.00, 90.00);
	CreateDynamicObject(1697, 1943.48, -1315.55, 17.14,   10.21, 0.00, 0.00);
	CreateDynamicObject(1697, 1951.37, -1315.55, 17.14,   10.21, 0.00, 0.00);
	CreateDynamicObject(7191, 1985.27, -1350.80, 12.62,   0.00, 0.00, 90.00);
	CreateDynamicObject(4571, 1997.15, -1289.96, -41.03,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1997.06, -1315.29, -41.04,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 2038.87, -1300.30, -41.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(7929, 1976.60, -1287.94, 29.62,   0.00, 0.00, 180.00);
	CreateDynamicObject(3486, 2001.51, -1287.91, 29.96,   0.00, 0.00, 180.00);
	CreateDynamicObject(3487, 2026.46, -1287.63, 29.64,   0.00, 0.00, 180.00);
	CreateDynamicObject(3488, 2046.99, -1287.71, 29.46,   0.00, 0.00, 180.00);
	CreateDynamicObject(6138, 2012.36, -1320.54, 28.44,   0.00, 0.00, 90.00);
	CreateDynamicObject(18764, 1973.82, -1328.47, 20.48,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 1979.77, -1328.47, 20.48,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 1981.21, -1328.47, 20.48,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 1987.28, -1328.47, 20.49,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 1988.91, -1328.47, 20.48,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 2021.02, -1328.47, 20.48,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 2026.83, -1328.47, 20.48,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 2028.41, -1328.47, 20.47,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 2034.39, -1328.47, 20.47,   0.00, 90.00, 0.00);
	CreateDynamicObject(18764, 2035.97, -1328.47, 20.49,   0.00, 90.00, 0.00);
	CreateDynamicObject(18766, 2051.07, -1325.96, 20.48,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 2050.45, -1325.96, 20.48,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 2003.97, -1325.96, 20.48,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 2003.25, -1325.96, 20.49,   0.00, 0.00, 90.00);
	CreateDynamicObject(673, 2055.81, -1274.12, 20.41,   356.86, 0.00, -1.57);
	CreateDynamicObject(673, 1991.29, -1271.66, 20.41,   356.86, 0.00, -1.57);
	CreateDynamicObject(673, 1985.18, -1303.18, 20.41,   357.00, 0.00, 10.00);
	CreateDynamicObject(645, 2034.84, -1272.78, 20.83,   356.86, 0.00, -1.57);
	CreateDynamicObject(620, 1984.96, -1281.23, 17.32,   3.14, 0.00, 1.57);
	CreateDynamicObject(620, 2014.15, -1301.49, 17.32,   3.00, 0.00, 69.00);
	CreateDynamicObject(673, 2055.66, -1302.28, 22.69,   356.86, 0.00, -1.57);
	CreateDynamicObject(7191, 2057.40, -1308.43, 24.74,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 2057.43, -1292.70, 24.75,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 2056.82, -1330.42, -72.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 2056.82, -1315.02, -72.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 2056.82, -1294.79, -72.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 2056.82, -1271.36, -72.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, 2005.90, -1329.30, 23.62,   0.00, 0.00, 90.00);
	CreateDynamicObject(638, 2001.35, -1329.30, 23.62,   0.00, 0.00, 90.00);
	CreateDynamicObject(638, 1997.52, -1327.04, 23.62,   0.00, 0.00, 90.00);
	CreateDynamicObject(638, 2045.00, -1327.08, 23.63,   0.00, 0.00, 90.00);
	CreateDynamicObject(638, 2048.31, -1329.53, 23.64,   0.00, 0.00, 90.00);
	CreateDynamicObject(638, 2053.42, -1329.53, 23.64,   0.00, 0.00, 90.00);
	CreateDynamicObject(2244, 1976.77, -1326.79, 23.22,   0.00, 0.00, 0.00);
	CreateDynamicObject(2244, 1970.94, -1326.66, 23.22,   0.00, 0.00, 0.00);
	CreateDynamicObject(2244, 1984.24, -1326.88, 23.22,   0.00, 0.00, 0.00);
	CreateDynamicObject(2244, 1991.68, -1326.78, 23.22,   0.00, 0.00, 0.00);
	CreateDynamicObject(2244, 2018.23, -1326.86, 23.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(2244, 2023.89, -1326.87, 23.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(2244, 2031.29, -1326.93, 23.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(2244, 2038.77, -1326.89, 23.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(717, 1969.07, -1330.12, 23.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(717, 1997.35, -1330.20, 23.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(717, 2017.24, -1330.10, 23.10,   0.00, 0.00, 90.00);
	CreateDynamicObject(717, 2045.06, -1330.07, 23.10,   0.00, 0.00, -90.00);
	CreateDynamicObject(3558, 1905.16, -1115.41, 27.61,   0.00, 0.00, 180.00);
	CreateDynamicObject(6137, 1930.31, -1110.84, 29.64,   0.00, 0.00, -90.00);
	CreateDynamicObject(3820, 1953.15, -1110.36, 30.15,   0.00, 0.00, 90.00);
	CreateDynamicObject(3829, 1889.21, -1107.33, 27.87,   0.00, 0.00, 90.00);
	CreateDynamicObject(9221, 1996.89, -1111.49, 27.92,   0.00, 0.00, 180.00);
	CreateDynamicObject(1569, 1992.82, -1113.22, 25.97,   0.00, 0.00, -1.00);
	CreateDynamicObject(9321, 2051.80, -1112.07, 25.71,   0.00, 0.00, -90.00);
	CreateDynamicObject(3601, 2016.55, -1113.60, 33.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(3606, 2039.31, -1114.30, 27.73,   0.00, 1.00, 0.00);
	CreateDynamicObject(709, 2019.21, -1175.75, 20.08,   0.00, 0.00, 0.00);
	CreateDynamicObject(709, 1908.98, -1202.80, 18.53,   0.00, 0.00, -62.00);
	CreateDynamicObject(708, 2024.42, -1210.41, 20.58,   0.00, 0.00, 0.00);
	CreateDynamicObject(708, 1933.49, -1171.00, 19.84,   0.00, 0.00, 0.00);
	CreateDynamicObject(673, 1933.68, -1227.46, 12.29,   356.86, 0.00, -1.57);
	CreateDynamicObject(673, 1930.36, -1224.29, 18.78,   357.00, 0.00, 33.00);
	CreateDynamicObject(708, 1873.91, -1236.04, 13.35,   0.00, 0.00, 40.00);
	CreateDynamicObject(714, 2047.07, -1237.11, 22.54,   0.00, 0.00, 0.00);
	CreateDynamicObject(790, 2047.30, -1150.70, 23.62,   0.00, 0.00, 0.00);
	CreateDynamicObject(714, 1890.68, -1157.61, 23.32,   0.00, 0.00, -76.00);
	CreateDynamicObject(9515, 1955.92, -1079.83, 26.47,   0.00, 0.00, 174.00);
	CreateDynamicObject(8572, 1955.83, -1064.31, 25.94,   0.00, 0.00, -95.50);
	CreateDynamicObject(9259, 1931.58, -1072.69, 27.85,   0.00, 0.00, -95.00);
	CreateDynamicObject(3033, 1934.98, -1065.73, 25.47,   0.00, 0.00, -6.00);
	CreateDynamicObject(3033, 1929.73, -1065.22, 25.47,   0.00, 0.00, -6.00);
	CreateDynamicObject(1566, 1920.36, -1067.21, 24.57,   0.00, 0.00, -5.50);
	CreateDynamicObject(1566, 1923.50, -1067.52, 24.57,   0.00, 0.00, 174.00);
	CreateDynamicObject(1566, 1943.59, -1069.56, 24.57,   0.00, 0.00, 174.00);
	CreateDynamicObject(1566, 1940.43, -1069.22, 24.57,   0.00, 0.00, -5.50);
	CreateDynamicObject(3033, 1937.68, -1068.94, 25.47,   0.00, 0.00, 84.50);
	CreateDynamicObject(3033, 1926.41, -1067.80, 25.47,   0.00, 0.00, 84.50);
	CreateDynamicObject(3820, 1909.03, -1073.15, 27.56,   0.00, 0.00, -92.00);
	CreateDynamicObject(3823, 1891.83, -1072.68, 29.49,   0.00, 0.00, -92.00);
	CreateDynamicObject(673, 1945.08, -1064.15, 22.79,   356.86, 0.00, -1.57);
	CreateDynamicObject(673, 1882.41, -1066.84, 22.79,   357.00, 0.00, -33.00);
	CreateDynamicObject(700, 1916.28, -1053.05, 23.15,   356.86, 0.00, -1.57);
	CreateDynamicObject(982, 1899.88, -1070.69, 23.56,   180.00, 0.00, 0.00);
	CreateDynamicObject(982, 1917.25, -1071.68, 23.56,   180.00, 0.00, -5.00);
	CreateDynamicObject(982, 1945.99, -1074.28, 24.05,   180.00, 0.00, -5.00);
	CreateDynamicObject(982, 1967.01, -1077.31, 24.46,   180.00, 0.00, -11.00);
	CreateDynamicObject(18764, 1935.31, -1063.26, 20.95,   0.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1935.76, -1058.26, 20.95,   0.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1936.15, -1053.63, 20.69,   -6.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1930.63, -1053.05, 20.69,   -6.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1929.79, -1062.71, 20.95,   0.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1930.23, -1057.75, 20.95,   0.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1951.48, -1068.22, 21.41,   0.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1951.90, -1063.32, 21.42,   0.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1952.29, -1058.67, 21.13,   -7.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1951.02, -1073.15, 21.41,   0.00, 0.00, -5.00);
	CreateDynamicObject(18764, 1952.33, -1057.80, 20.78,   0.00, 0.00, -7.50);
	CreateDynamicObject(18763, 1906.29, -1063.83, 20.67,   0.00, 0.00, -1.50);
	CreateDynamicObject(18763, 1906.37, -1060.84, 20.67,   0.00, 0.00, -1.50);
	CreateDynamicObject(18763, 1906.43, -1057.86, 20.67,   0.00, 0.00, -1.50);
	CreateDynamicObject(18763, 1906.51, -1054.87, 20.67,   0.00, 0.00, -1.50);
	CreateDynamicObject(18763, 1906.50, -1052.22, 20.53,   -6.86, 0.00, 1.92);
	CreateDynamicObject(18764, 1884.37, -1072.53, 20.45,   0.00, 0.00, 178.47);
	CreateDynamicObject(9321, 1889.44, -1073.34, 24.22,   0.00, 0.00, 178.47);
	CreateDynamicObject(18764, 1879.39, -1072.44, 20.45,   0.00, 0.00, 178.47);
	CreateDynamicObject(18764, 1884.34, -1073.97, 20.46,   0.00, 0.00, 178.47);
	CreateDynamicObject(18764, 1879.39, -1073.83, 20.43,   0.00, 0.00, 178.47);
	CreateDynamicObject(984, 1883.62, -1069.92, 23.56,   180.00, 0.00, 90.00);
	CreateDynamicObject(984, 1883.47, -1076.58, 23.56,   180.00, 0.00, 90.00);
	CreateDynamicObject(982, 1889.65, -1083.17, 23.50,   180.00, 0.00, 88.59);
	CreateDynamicObject(982, 1915.22, -1084.32, 23.50,   180.00, 0.00, 86.37);
	CreateDynamicObject(982, 1940.73, -1086.51, 24.19,   180.00, 0.00, 83.78);
	CreateDynamicObject(984, 1958.19, -1088.79, 24.74,   180.00, 0.00, 80.74);
	CreateDynamicObject(3599, 2097.00, -1146.99, 30.43,   0.00, 0.00, -90.00);
	CreateDynamicObject(11313, 2093.56, -1140.90, 25.87,   0.00, 0.00, 0.00);
	CreateDynamicObject(1569, 2093.61, -1158.70, 24.55,   0.00, 0.00, 90.00);
	CreateDynamicObject(1569, 2093.61, -1155.70, 24.55,   0.00, 0.00, -90.00);
	CreateDynamicObject(3820, 2098.79, -1123.55, 30.26,   0.00, 0.00, 0.00);
	CreateDynamicObject(3580, 2096.80, -1180.57, 29.05,   356.86, 0.00, 90.00);
	CreateDynamicObject(1569, 2092.55, -1181.41, 25.37,   0.00, 0.00, 90.00);
	CreateDynamicObject(9321, 2102.04, -1171.81, 25.86,   0.00, 0.00, 180.00);
	CreateDynamicObject(3843, 2090.35, -1241.17, 27.29,   0.00, 0.00, -90.00);
	CreateDynamicObject(3826, 2113.71, -1247.16, 29.27,   0.00, 0.00, 90.00);
	CreateDynamicObject(3823, 2136.64, -1243.15, 26.73,   0.00, 0.00, 90.00);
	CreateDynamicObject(6137, 2131.91, -1275.57, 24.57,   0.00, 0.00, -90.00);
	CreateDynamicObject(11313, 2137.85, -1275.93, 26.42,   0.00, 0.00, 90.00);
	CreateDynamicObject(1569, 2130.66, -1279.92, 24.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(2946, 2110.41, -1278.61, 24.83,   0.00, 0.00, -90.00);
	CreateDynamicObject(3829, 2155.76, -1435.10, 28.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(3825, 2155.06, -1425.11, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(3828, 2156.47, -1415.77, 27.69,   0.00, 0.00, 0.00);
	CreateDynamicObject(3829, 2156.41, -1446.04, 28.08,   0.00, 0.00, 180.00);
	CreateDynamicObject(3829, 2158.32, -1405.44, 28.07,   0.00, 0.00, 0.00);
	CreateDynamicObject(673, 2140.90, -1444.14, 24.28,   3.14, 0.00, 1.57);
	CreateDynamicObject(673, 2139.95, -1425.98, 24.28,   3.00, 0.00, -33.00);
	CreateDynamicObject(673, 2140.37, -1404.81, 24.28,   3.00, 0.00, 4.00);
	CreateDynamicObject(673, 2140.28, -1451.74, 24.28,   3.00, 0.00, -25.00);
	CreateDynamicObject(673, 2141.80, -1493.37, 24.28,   3.00, 0.00, -69.00);
	CreateDynamicObject(3823, 2157.02, -1468.95, 28.22,   0.00, 0.00, 0.00);
	CreateDynamicObject(3820, 2155.72, -1485.67, 26.44,   0.00, 0.00, 0.00);
	CreateDynamicObject(673, 2142.52, -1476.45, 24.28,   3.00, 0.00, -25.00);
	CreateDynamicObject(7929, 1819.87, -1437.62, 19.21,   0.00, 0.00, 90.00);
	CreateDynamicObject(7940, 1824.12, -1412.03, 15.44,   0.00, 0.00, 90.00);
	CreateDynamicObject(3488, 1819.96, -1386.07, 19.14,   0.00, 0.00, 90.00);
	CreateDynamicObject(3487, 1819.78, -1365.14, 19.22,   0.00, 0.00, 90.00);
	CreateDynamicObject(3485, 1819.75, -1339.54, 19.54,   0.00, 0.00, 90.00);
	CreateDynamicObject(3486, 1819.88, -1309.21, 19.54,   0.00, 0.00, 90.00);
	CreateDynamicObject(3446, 1822.65, -1284.86, 16.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(7419, 1751.02, -1384.47, 6.22,   0.00, 0.00, 90.00);
	CreateDynamicObject(7035, 1731.89, -1316.69, 16.40,   0.00, 0.00, 180.00);
	CreateDynamicObject(16477, 1774.11, -1330.20, 12.54,   0.00, 0.00, 14.08);
	CreateDynamicObject(1244, 1786.00, -1326.47, 13.46,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1724.94, -1334.89, 12.54,   0.00, 0.00, 180.00);
	CreateDynamicObject(1244, 1786.00, -1330.55, 13.46,   0.00, 0.00, 0.00);
	CreateDynamicObject(1244, 1792.12, -1330.55, 13.46,   0.00, 0.00, 0.00);
	CreateDynamicObject(1244, 1792.12, -1326.47, 13.46,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1802.48, -1425.72, 14.05,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1795.44, -1408.36, 14.05,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1802.48, -1380.84, 14.05,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1802.48, -1335.96, 14.05,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1802.47, -1302.30, 14.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(7191, 1795.45, -1364.42, 14.06,   0.00, 0.00, 180.00);
	CreateDynamicObject(6977, 1814.39, -1273.60, 6.54,   0.00, 0.00, -25.00);
	CreateDynamicObject(6977, 1791.08, -1440.36, 6.04,   0.00, 0.00, 90.00);
	CreateDynamicObject(19134, 1802.32, -1445.80, 15.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(19134, 1802.32, -1443.80, 15.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(19134, 1802.32, -1441.80, 15.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(19134, 1802.32, -1439.80, 15.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(19134, 1802.32, -1437.80, 15.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(19134, 1802.32, -1435.80, 15.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(19134, 1802.32, -1433.80, 15.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(19134, 1802.32, -1445.80, 15.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(8843, 1798.46, -1432.43, 12.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(8843, 1798.46, -1396.93, 12.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(8843, 1798.46, -1356.93, 12.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1809.16, -1431.25, -51.66,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1795.59, -1433.68, 117.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(18765, 1797.44, -1425.69, 10.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.44, -1415.72, 10.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.44, -1405.71, 10.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.44, -1395.75, 10.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.44, -1385.78, 10.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.44, -1375.82, 10.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.44, -1365.81, 10.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.44, -1355.80, 10.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.44, -1345.79, 10.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1797.46, -1425.69, 10.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(18769, 1790.05, -1330.99, 11.84,   0.00, 0.00, 90.00);
	CreateDynamicObject(18769, 1794.56, -1330.99, 11.84,   0.00, 0.00, 90.00);
	CreateDynamicObject(1557, 1939.43, -1279.08, 12.54,   0.00, 0.00, 90.00);
	CreateDynamicObject(1557, 1944.07, -1295.07, 12.58,   0.00, 0.00, 90.00);
	CreateDynamicObject(1569, 1866.00, -1301.65, 12.59,   0.00, 0.00, 0.00);
	CreateDynamicObject(1569, 1826.02, -1413.25, 13.29,   0.00, 0.00, 90.00);
	CreateDynamicObject(1491, 1826.50, -1443.82, 12.58,   0.00, 0.00, 90.00);
	CreateDynamicObject(1491, 1866.14, -1380.67, 12.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(1491, 1913.05, -1421.80, 12.49,   0.00, 0.00, 0.00);
	CreateDynamicObject(1491, 1981.27, -1281.33, 22.99,   0.00, 0.00, 0.00);


	// Prison mapping //

    RemoveBuildingForPlayer(playerid, 708, 1133.3828, -2104.4609, 69.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 708, 1072.8125, -2111.4063, 49.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 708, 1082.8672, -2136.9375, 56.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 708, 1109.9063, -2132.6094, 65.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1105.0938, -2111.6875, 65.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1233.3672, -2095.7891, 58.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1103.1016, -2093.6641, 61.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1097.0391, -2079.4453, 61.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1148.0781, -2088.7266, 67.8984, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1127.2422, -2080.7813, 66.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1144.0781, -2076.3750, 68.1016, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1159.9766, -2075.1563, 67.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1155.3672, -2072.5547, 67.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1174.1484, -2117.5313, 65.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1175.6094, -2079.4688, 67.7969, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1137.5078, -2070.0313, 71.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1136.8984, -2061.3047, 68.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1174.7500, -2070.0313, 71.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 4826, 1102.9141, -2036.9844, 77.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1136.8984, -2046.4844, 68.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1159.4375, -2039.8047, 68.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1142.1953, -2034.0469, 68.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1136.8984, -2025.7188, 68.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1202.3672, -2112.2891, 61.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1213.2969, -2110.0234, 60.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1248.2031, -2089.9531, 56.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1258.1719, -2081.9297, 55.7891, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1258.2031, -2095.2813, 56.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1268.3984, -2092.8047, 55.7891, 0.25);
	RemoveBuildingForPlayer(playerid, 762, 1288.2188, -2093.4609, 56.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 762, 1189.7734, -2078.3672, 70.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1197.8516, -2074.6172, 67.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1207.6094, -2079.0781, 66.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1205.3438, -2070.0313, 71.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1208.7109, -2059.3203, 75.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1211.2344, -2052.9922, 68.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 951, 1209.9141, -2065.5781, 68.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 1290, 1242.7266, -2060.8750, 64.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 1290, 1280.2031, -2062.1016, 63.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1323.5156, -2052.6250, 60.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1187.2500, -2034.0469, 68.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 4986, 1179.1406, -2036.9922, 65.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1208.4297, -2045.2422, 75.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1204.4922, -2039.8047, 68.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1290.8750, -2042.6094, 55.7891, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1208.9141, -2025.9297, 75.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 762, 1290.9766, -2025.9375, 60.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1284.9844, -2020.2500, 57.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1211.2344, -2019.6797, 68.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1136.8984, -2012.6875, 68.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1139.1797, -1997.7656, 67.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1146.1328, -1998.4688, 67.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1110.1719, -1990.4453, 65.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 762, 1157.3750, -1989.4609, 67.7344, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1148.7031, -1992.9844, 67.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1165.1328, -1994.1172, 66.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1165.6016, -1988.1719, 64.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 951, 1175.0703, -1993.9531, 68.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1106.6094, -1985.6484, 64.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1208.9141, -2012.8516, 75.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 951, 1209.6328, -2008.5469, 68.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1208.6484, -2000.0703, 67.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1190.1953, -1995.4531, 66.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1205.2734, -1987.8203, 63.7891, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1190.8125, -1987.7344, 64.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1270.8984, -2000.6563, 57.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1279.4141, -1998.4766, 56.8125, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1260.0781, -1995.7813, 55.4609, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1280.4453, -1992.7422, 54.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1291.0469, -2007.0703, 54.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1286.0000, -2000.3984, 55.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1291.0938, -1997.9922, 53.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1407.8438, -2020.5234, 50.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1419.2656, -2004.5469, 48.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 762, 1399.6563, -1985.8750, 50.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 618, 1409.0781, -1986.4297, 44.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 691, 1411.7109, -1991.5703, 45.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 661, 1389.2656, -1982.5547, 45.2891, 0.25);
	CreateDynamicObject(4870, 1374.61, -2056.45, 42.47,   0.00, 17.50, 0.00);
	CreateDynamicObject(4870, 1207.60, -2056.45, 68.17,   0.00, 0.00, 0.00);
	CreateDynamicObject(1290, 1280.19, -2061.90, 74.13,   356.86, 0.00, -3.13);
	CreateDynamicObject(1290, 1243.08, -2061.79, 74.13,   356.86, 0.00, -3.13);
	CreateDynamicObject(5737, 1164.83, -2052.34, 55.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1138.65, -2052.33, 55.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1191.03, -2052.35, 55.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1217.14, -2052.43, 55.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1243.21, -2052.42, 55.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1269.39, -2052.40, 55.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1280.02, -2052.43, 55.55,   -90.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1301.68, -2052.45, 52.21,   -17.50, -90.00, -90.00);
	CreateDynamicObject(5737, 1326.59, -2052.47, 44.34,   -17.50, -90.00, -90.00);
	CreateDynamicObject(5737, 1136.06, -2060.64, 55.57,   -90.00, 180.00, 0.00);
	CreateDynamicObject(5737, 1162.26, -2060.64, 55.55,   -90.00, 180.00, 0.00);
	CreateDynamicObject(5737, 1188.48, -2060.65, 55.28,   -90.00, 180.00, 0.00);
	CreateDynamicObject(5737, 1214.59, -2060.65, 55.55,   -90.00, 180.00, 0.00);
	CreateDynamicObject(5737, 1240.77, -2060.64, 55.55,   -90.00, 180.00, 0.00);
	CreateDynamicObject(5737, 1266.91, -2060.67, 55.55,   -90.00, 180.00, 0.00);
	CreateDynamicObject(5737, 1280.12, -2060.67, 55.55,   -90.00, 180.00, 0.00);
	CreateDynamicObject(5737, 1301.76, -2060.69, 52.21,   -17.50, 90.00, -90.00);
	CreateDynamicObject(5737, 1326.51, -2060.68, 44.41,   -17.50, 90.00, -90.00);
	CreateDynamicObject(16638, 1288.70, -2045.34, 70.43,   0.00, 0.00, 0.00);
	CreateDynamicObject(16093, 1288.59, -2044.35, 72.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(18765, 1288.63, -2042.95, 69.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(18765, 1288.63, -2042.95, 64.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(18765, 1288.63, -2042.95, 59.68,   0.00, 0.00, 0.00);
	CreateDynamicObject(18766, 1293.31, -2042.96, 69.61,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1290.88, -2042.95, 65.97,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1290.88, -2042.95, 59.93,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1290.88, -2042.95, 54.93,   0.00, 0.00, 90.00);
	CreateDynamicObject(10763, 1137.67, -2043.48, 68.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(8417, 1260.58, -2027.47, 58.58,   1.59, 0.00, 90.00);
	CreateDynamicObject(8416, 1251.30, -2015.56, 59.95,   0.00, 0.00, 90.00);
	CreateDynamicObject(8416, 1251.30, -2015.56, 62.82,   0.00, 0.00, 90.00);
	CreateDynamicObject(8209, 1231.97, -2046.92, 69.98,   0.00, 0.00, 0.00);
	CreateDynamicObject(8209, 1174.77, -2046.91, 69.98,   0.00, 0.00, 0.00);
	CreateDynamicObject(8209, 1242.99, -2066.21, 69.98,   0.00, 0.00, 180.00);
	CreateDynamicObject(8209, 1153.96, -1993.48, 70.26,   0.00, 0.00, 0.00);
	CreateDynamicObject(8209, 1104.01, -2043.45, 70.26,   0.00, 0.00, 90.00);
	CreateDynamicObject(8209, 1153.85, -2093.35, 70.26,   0.00, 0.00, 180.00);
	CreateDynamicObject(8209, 1153.85, -2093.35, 63.49,   0.00, 0.00, 180.00);
	CreateDynamicObject(8209, 1104.01, -2043.45, 63.22,   0.00, 0.00, 90.00);
	CreateDynamicObject(8209, 1122.36, -2042.94, 70.26,   0.00, 0.00, 90.00);
	CreateDynamicObject(8209, 1252.22, -1993.52, 62.51,   0.00, 9.00, 0.00);
	CreateDynamicObject(8209, 1251.23, -1993.51, 56.36,   0.00, 9.00, 0.00);
	CreateDynamicObject(8209, 1301.56, -2043.37, 54.71,   0.00, 0.00, 90.00);
	CreateDynamicObject(8209, 1301.56, -2043.37, 59.50,   0.00, 0.00, 90.00);
	CreateDynamicObject(8209, 1252.22, -1993.52, 59.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(8209, 1252.48, -2093.43, 65.12,   0.00, -6.50, 180.00);
	CreateDynamicObject(8209, 1251.68, -2093.45, 58.14,   0.00, -6.50, 180.00);
	CreateDynamicObject(3496, 1277.52, -2045.44, 57.81,   0.00, 0.00, 0.00);
	CreateDynamicObject(3496, 1266.35, -2045.14, 58.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(3496, 1257.39, -2045.26, 58.39,   0.00, 0.00, 0.00);
	CreateDynamicObject(3496, 1246.22, -2044.81, 58.72,   0.00, 0.00, 0.00);
	CreateDynamicObject(3496, 1277.56, -2008.66, 57.87,   0.00, 0.00, 180.00);
	CreateDynamicObject(3496, 1266.20, -2008.19, 58.15,   0.00, 0.00, 180.00);
	CreateDynamicObject(3496, 1257.27, -2008.65, 58.35,   0.00, 0.00, 180.00);
	CreateDynamicObject(3496, 1246.20, -2008.50, 58.66,   0.00, 0.00, 180.00);
	CreateDynamicObject(1280, 1280.56, -2027.14, 58.46,   0.00, 0.00, 0.00);
	CreateDynamicObject(1280, 1280.56, -2022.28, 58.46,   0.00, 0.00, 0.00);
	CreateDynamicObject(1280, 1241.69, -2027.99, 59.45,   0.00, 0.00, 180.00);
	CreateDynamicObject(1280, 1241.72, -2020.90, 59.45,   0.00, 0.00, 180.00);
	CreateDynamicObject(18980, 1292.93, -2066.16, 63.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1292.94, -2048.62, 63.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1292.96, -2057.27, 75.47,   0.00, 90.00, 90.00);
	CreateDynamicObject(18980, 1302.21, -2093.32, 62.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1301.74, -1993.83, 62.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1104.40, -1993.74, 70.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1104.43, -2093.13, 71.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(8209, 1104.01, -2043.45, 73.43,   0.00, 0.00, 90.00);
	CreateDynamicObject(8209, 1338.35, -2066.21, 53.37,   0.00, -20.00, 180.00);
	CreateDynamicObject(8209, 1338.20, -2048.44, 53.24,   0.00, 20.00, 0.00);
	CreateDynamicObject(18765, 1288.48, -2044.12, 69.65,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1292.96, -2057.27, 76.44,   0.00, 90.00, 90.00);
	CreateDynamicObject(1616, 1293.91, -2046.11, 76.82,   0.00, 0.00, 180.00);
	CreateDynamicObject(1616, 1293.86, -2049.40, 76.02,   0.00, 0.00, 180.00);
	CreateDynamicObject(1622, 1293.95, -2064.47, 76.08,   0.00, 0.00, 172.50);
	CreateDynamicObject(1622, 1293.87, -2066.52, 76.82,   0.00, 0.00, 172.50);
	CreateDynamicObject(1616, 1302.29, -2094.21, 73.64,   0.00, 0.00, 90.00);
	CreateDynamicObject(1616, 1303.05, -2093.29, 73.64,   0.00, 0.00, 180.00);
	CreateDynamicObject(1616, 1301.32, -2093.38, 73.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(1616, 1301.97, -2092.51, 73.64,   0.00, 0.00, -90.00);
	CreateDynamicObject(1616, 1302.67, -1993.67, 73.33,   0.00, 0.00, 180.00);
	CreateDynamicObject(1622, 1285.82, -2039.95, 75.66,   0.00, 0.00, 308.50);
	CreateDynamicObject(1622, 1123.68, -2068.36, 75.17,   0.00, 0.00, 180.00);
	CreateDynamicObject(1622, 1123.71, -2060.06, 74.38,   0.00, 0.00, 180.00);
	CreateDynamicObject(8311, 1119.42, -2025.06, 70.25,   0.00, 0.00, 273.00);
	CreateDynamicObject(18980, 1348.54, -2065.26, 47.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1347.63, -2048.82, 47.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1339.19, -2048.87, 48.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1338.98, -2066.00, 48.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1330.08, -2066.12, 52.38,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1330.24, -2048.72, 52.38,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, 1117.81, -2036.98, 110.03,   0.00, 0.00, 0.00);
	CreateDynamicObject(8209, 1157.32, -2001.63, 69.21,   0.00, 0.00, 0.00);
	CreateDynamicObject(986, 1207.04, -1997.85, 69.49,   0.00, 0.00, 90.00);
	CreateDynamicObject(18980, 1206.82, -2001.80, 62.58,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1207.23, -1993.79, 62.58,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1122.90, -2001.93, 63.81,   0.00, 0.00, 0.00);
	CreateDynamicObject(1533, 1122.74, -1998.53, 67.93,   0.00, 0.00, 90.00);
	CreateDynamicObject(1533, 1127.99, -2001.74, 67.93,   0.00, 0.00, 180.00);
	CreateDynamicObject(0, 1126.72, -2002.01, 67.93,   0.00, 0.00, 0.00);
	CreateDynamicObject(1533, 1201.49, -2002.01, 67.93,   0.00, 0.00, 0.00);
	CreateDynamicObject(1533, 1201.49, -2001.75, 67.93,   0.00, 0.00, 0.00);
	CreateDynamicObject(1533, 1293.28, -2037.92, 57.32,   0.00, 0.00, 180.00);
	CreateDynamicObject(1536, 1123.36, -2065.86, 68.58,   0.00, 0.00, 90.00);
	CreateDynamicObject(1536, 1123.30, -2062.84, 68.56,   0.00, 0.00, -90.00);
	CreateDynamicObject(19454, 1123.30, -2048.65, 69.98,   90.00, 0.00, 0.00);
	CreateDynamicObject(3037, 1123.50, -2056.54, 70.27,   0.00, 1.00, 0.00);
	CreateDynamicObject(5737, 1135.69, -2079.47, 62.89,   -3.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1160.69, -2079.47, 62.89,   -3.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1186.69, -2079.47, 62.89,   -3.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1193.86, -2079.84, 56.32,   -3.00, 90.00, 0.00);
	CreateDynamicObject(5737, 1186.78, -2086.99, 56.64,   0.00, 87.00, -90.00);
	CreateDynamicObject(5737, 1160.78, -2086.99, 56.64,   0.00, 87.00, -90.00);
	CreateDynamicObject(5737, 1135.28, -2086.99, 56.64,   0.00, 87.00, -90.00);
	CreateDynamicObject(987, 1135.14, -2050.85, 68.28,   0.00, 0.00, 180.00);
	CreateDynamicObject(18980, 1135.35, -2051.02, 67.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1135.38, -2062.22, 67.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, 1123.14, -2062.33, 68.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1183.00, -2066.10, 63.31,   0.00, 0.00, 0.00);
	CreateDynamicObject(18765, 1124.38, -2067.50, 66.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(2629, 1170.90, -2045.27, 68.01,   0.00, 0.00, 180.00);
	CreateDynamicObject(2628, 1172.90, -2045.27, 68.01,   0.00, 0.00, 180.00);
	CreateDynamicObject(2629, 1174.90, -2045.27, 68.01,   0.00, 0.00, 180.00);
	CreateDynamicObject(2628, 1176.90, -2045.27, 68.01,   0.00, 0.00, 180.00);
	CreateDynamicObject(2629, 1178.90, -2045.27, 68.01,   0.00, 0.00, 180.00);
	CreateDynamicObject(2627, 1181.57, -2042.93, 67.95,   0.00, 0.00, 233.00);
	CreateDynamicObject(2627, 1182.62, -2041.49, 67.95,   0.00, 0.00, 233.00);
	CreateDynamicObject(3071, 1180.93, -2037.77, 68.12,   0.00, 0.00, 233.00);
	CreateDynamicObject(3072, 1180.60, -2038.07, 68.12,   -90.00, 0.00, 233.00);
	CreateDynamicObject(3072, 1178.22, -2045.14, 68.12,   0.00, 0.00, 233.00);
	CreateDynamicObject(3072, 1177.88, -2045.03, 68.12,   0.00, 0.00, 233.00);
	CreateDynamicObject(3072, 1175.60, -2044.04, 68.12,   90.00, 0.00, 232.50);
	CreateDynamicObject(3072, 1175.31, -2043.65, 68.12,   90.00, 0.00, 270.00);
	CreateDynamicObject(2114, 1186.07, -2036.34, 68.11,   0.00, 0.00, 0.00);
	CreateDynamicObject(2114, 1254.28, -2038.69, 58.92,   0.00, 0.00, 0.00);
	CreateDynamicObject(2114, 1267.91, -2028.31, 58.92,   0.00, 0.00, 0.00);
	CreateDynamicObject(2114, 1259.61, -2029.29, 58.92,   0.00, 0.00, 0.00);
	CreateDynamicObject(2114, 1259.63, -2028.61, 58.92,   0.00, 0.00, 0.00);
	CreateDynamicObject(2114, 1243.46, -2016.89, 59.11,   0.00, 0.00, 0.00);
	CreateDynamicObject(1281, 1152.76, -2024.61, 68.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1281, 1162.67, -2012.91, 68.82,   0.00, 0.00, 33.00);
	CreateDynamicObject(1281, 1164.54, -2026.20, 68.82,   0.00, 0.00, 33.00);
	CreateDynamicObject(19464, 1195.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1191.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1187.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1183.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1179.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(3277, 1116.07, -2069.83, 78.87,   0.00, 0.00, -103.31);
	CreateDynamicObject(3277, 1116.29, -2004.16, 78.83,   0.00, 0.00, 70.50);
	CreateDynamicObject(1533, 1122.75, -2070.77, 68.77,   0.00, 0.00, 90.00);
	CreateDynamicObject(1533, 1122.49, -2070.78, 68.77,   0.00, 0.00, 90.00);
	CreateDynamicObject(6976, 1107.29, -2067.63, 65.90,   0.00, 0.00, 90.00);
	CreateDynamicObject(8210, 1155.49, -2066.21, 69.98,   0.00, 0.00, 180.00);
	CreateDynamicObject(18980, 1193.50, -2066.10, 63.31,   0.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1175.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1171.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1167.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1163.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1159.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1155.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1150.56, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1146.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1141.56, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1137.06, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1132.56, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(19464, 1127.56, -2088.98, 67.00,   -3.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1127.73, -2066.04, 63.29,   0.00, 0.00, 0.00);
	CreateDynamicObject(1622, 1128.01, -2066.92, 75.17,   0.00, 0.00, 90.00);
	CreateDynamicObject(18765, 1290.87, -2042.94, 61.95,   0.00, 0.00, 90.00);
	CreateDynamicObject(18980, 1281.47, -2047.07, 63.29,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1203.55, -2092.97, 64.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(1533, 1127.99, -2001.99, 67.93,   0.00, 0.00, 180.00);
	CreateDynamicObject(19454, 1123.30, -2052.15, 69.98,   90.00, 0.00, 0.00);
	CreateDynamicObject(19454, 1123.28, -2055.64, 69.98,   90.00, 0.00, 0.00);
	CreateDynamicObject(19454, 1123.30, -2059.15, 69.98,   90.00, 0.00, 0.00);
	CreateDynamicObject(19454, 1123.27, -2062.65, 69.98,   90.00, 0.00, 0.00);
	CreateDynamicObject(19454, 1123.26, -2066.15, 69.98,   90.00, 0.00, 0.00);
	CreateDynamicObject(19454, 1123.28, -2067.36, 69.98,   90.00, 0.00, 0.00);
	CreateDynamicObject(1536, 1123.37, -2047.34, 68.20,   0.00, 0.00, -90.00);
	CreateDynamicObject(1536, 1123.41, -2050.36, 68.20,   0.00, 0.00, 90.00);
	CreateDynamicObject(6976, 1120.99, -2052.28, 70.53,   0.00, 0.00, -90.00);
	CreateDynamicObject(6976, 1111.44, -2021.62, 70.53,   0.00, 0.00, 90.00);
	CreateDynamicObject(18850, 1095.96, -2037.55, 67.14,   0.00, 0.00, 0.00);
	CreateDynamicObject(18768, 1095.90, -2037.42, 78.69,   0.00, 0.00, 0.00);
	CreateDynamicObject(18765, 1113.85, -2037.10, 78.01,   90.00, 0.00, 0.00);
	CreateDynamicObject(18756, 1110.85, -2037.09, 81.32,   0.00, 0.00, 0.00);
	CreateDynamicObject(18757, 1110.85, -2037.09, 81.32,   0.00, 0.00, 0.00);
	CreateDynamicObject(3877, 1104.45, -2093.20, 83.26,   0.00, 0.00, 0.00);
	CreateDynamicObject(3877, 1104.37, -1993.80, 82.49,   0.00, 0.00, 0.00);
	CreateDynamicObject(3877, 1301.72, -1993.73, 74.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(3877, 1302.22, -2093.44, 74.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(3877, 1081.34, -2052.07, 80.79,   0.00, 0.00, 0.00);
	CreateDynamicObject(3877, 1081.42, -2022.87, 80.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(3877, 1110.41, -2022.81, 80.86,   0.00, 0.00, 0.00);
	CreateDynamicObject(3877, 1110.38, -2051.99, 80.93,   0.00, 0.00, 0.00);
	CreateDynamicObject(4574, 1107.68, -2078.26, 96.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(1694, 1115.55, -2022.81, 82.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(3819, 1188.46, -2005.45, 68.81,   0.00, 0.00, 90.00);
	CreateDynamicObject(3819, 1199.78, -2040.29, 68.81,   0.00, 0.00, -90.00);
	CreateDynamicObject(982, 1079.72, -2040.41, 79.94,   0.00, 180.00, 0.00);
	CreateDynamicObject(983, 1079.72, -2024.41, 79.94,   0.00, 180.00, 0.00);
	CreateDynamicObject(982, 1092.51, -2021.22, 79.94,   0.00, 180.00, 90.00);
	CreateDynamicObject(982, 1092.51, -2053.17, 79.94,   0.00, 180.00, 90.00);
	CreateDynamicObject(982, 1111.72, -2040.41, 79.94,   0.00, 180.00, 0.00);
	CreateDynamicObject(983, 1111.72, -2024.41, 79.94,   0.00, 180.00, 0.00);
	CreateDynamicObject(983, 1108.54, -2021.24, 79.94,   0.00, 180.00, 90.00);
	CreateDynamicObject(983, 1108.51, -2053.17, 79.94,   0.00, 180.00, 90.00);
	CreateDynamicObject(982, 1111.71, -2040.42, 81.18,   0.00, 180.00, 0.00);
	CreateDynamicObject(983, 1108.51, -2053.17, 81.18,   0.00, 180.00, 90.00);
	CreateDynamicObject(982, 1092.51, -2053.17, 81.18,   0.00, 180.00, 90.00);
	CreateDynamicObject(982, 1079.72, -2040.41, 81.18,   0.00, 180.00, 0.00);
	CreateDynamicObject(983, 1079.72, -2024.41, 81.18,   0.00, 180.00, 0.00);
	CreateDynamicObject(982, 1092.51, -2021.22, 81.18,   0.00, 180.00, 90.00);
	CreateDynamicObject(983, 1111.72, -2024.41, 81.18,   0.00, 180.00, 0.00);
	CreateDynamicObject(983, 1108.54, -2021.24, 81.18,   0.00, 180.00, 90.00);
	CreateDynamicObject(3031, 1286.74, -2042.47, 76.63,   0.00, -11.50, 146.06);
	CreateDynamicObject(18652, 1293.10, -2056.53, 74.98,   0.00, 0.00, 0.00);
	CreateDynamicObject(1290, 1200.58, -2061.79, 74.13,   356.86, 0.00, -3.13);
	CreateDynamicObject(1290, 1159.08, -2061.79, 74.13,   356.86, 0.00, 0.00);
	CreateDynamicObject(1290, 1142.91, -2091.75, 74.13,   356.86, 0.00, 0.00);
	CreateDynamicObject(1290, 1185.01, -2091.78, 74.13,   356.86, 0.00, 0.00);
	CreateDynamicObject(1290, 1174.95, -2037.19, 71.62,   356.86, 0.00, 0.00);
	CreateDynamicObject(1290, 1175.24, -2036.86, 71.60,   356.86, 0.00, 90.00);
	CreateDynamicObject(1290, 1270.33, -2046.59, 61.65,   356.86, 0.00, 90.00);
	CreateDynamicObject(1290, 1252.83, -2046.59, 61.65,   356.86, 0.00, 90.00);
	CreateDynamicObject(1290, 1261.29, -2005.68, 61.65,   356.86, 0.00, 0.00);
	CreateDynamicObject(3037, 1123.34, -2056.54, 70.27,   0.00, 1.00, 0.00);
	CreateDynamicObject(18652, 1123.38, -2056.47, 72.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(18652, 1123.37, -2064.48, 71.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(18652, 1123.37, -2048.74, 71.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(1697, 1289.58, -2043.46, 77.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1292.93, -2061.90, 67.35,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1292.93, -2050.96, 67.35,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1292.93, -2064.60, 63.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1292.93, -2063.20, 63.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(18980, 1292.93, -2049.78, 63.98,   0.00, 0.00, 0.00);
	//unity station //
    RemoveBuildingForPlayer(playerid, 4961, 1745.2031, -1882.8516, 26.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 4974, 1899.1563, -1936.3359, 14.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 5033, 1745.2031, -1882.8516, 26.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 5055, 1745.2031, -1882.8516, 26.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 5067, 1701.3906, -1954.1328, 10.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1687.4375, -1923.4609, 11.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1687.4375, -1903.4766, 11.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 4881, 1701.3906, -1954.1328, 10.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1725.3906, -1927.0000, 16.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1714.9609, -1909.6328, 12.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1714.9609, -1914.2969, 12.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1725.3906, -1897.2266, 16.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 955, 1729.7891, -1943.0469, 12.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 4853, 1736.9766, -1960.6563, 15.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 1290, 1736.2734, -1972.5000, 18.8281, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1727.1953, -1930.8984, 11.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1725.9063, -1923.5000, 12.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1727.1953, -1908.0938, 11.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1727.1953, -1916.3047, 11.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1725.9063, -1908.1797, 12.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1687.4375, -1881.0078, 11.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 634, 1712.9297, -1868.2109, 12.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 634, 1721.0234, -1868.2109, 12.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1727.1953, -1893.1563, 11.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1725.9063, -1893.5000, 12.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1724.8750, -1859.5391, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1703.4688, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1710.8359, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1714.9766, -1841.8516, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1710.8359, -1833.0547, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1703.4688, -1833.0547, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1704.7422, -1829.7969, 11.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1721.1563, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1731.4766, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1741.7969, -1833.0547, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1731.4766, -1833.0547, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1721.1563, -1833.0547, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1723.9297, -1829.7969, 11.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1732.6719, -1830.0781, 11.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 963, 1747.0391, -1942.6641, 13.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 962, 1757.1484, -1942.6563, 13.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1774.7578, -1931.3125, 16.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1806.4297, -1931.6016, 16.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 4821, 1745.2031, -1882.8516, 26.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 5024, 1748.8438, -1883.0313, 14.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 5083, 1748.8438, -1883.0313, 14.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1774.7578, -1901.5391, 16.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1806.4297, -1901.8281, 16.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1755.8203, -1859.5391, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1808.1250, -1859.5391, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1783.6719, -1859.5391, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1747.1875, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1742.5547, -1835.0625, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1762.8281, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1778.4766, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1794.1172, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1809.7656, -1846.7109, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 4895, 1899.1563, -1936.3359, 14.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 4981, 1898.3984, -1913.4063, 20.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 5084, 1898.3984, -1913.4063, 20.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 4983, 1961.0313, -1871.4063, 23.7734, 0.25);
	CreateDynamicObject(4867, 1731.36, -1933.22, 12.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(8575, 1741.88, -1927.95, 18.36,   0.00, 0.00, -90.00);
	CreateDynamicObject(4867, 1732.35, -1916.94, 12.19,   0.00, 0.00, -9.14);
	CreateDynamicObject(708, 1712.23, -1832.51, 12.12,   0.00, 0.00, 0.00);
	CreateDynamicObject(708, 1690.45, -1876.69, 11.97,   0.00, 0.00, 40.00);
	CreateDynamicObject(708, 1775.74, -1897.44, 12.11,   0.00, 0.00, 40.00);
	CreateDynamicObject(700, 1741.43, -1895.15, 11.45,   356.86, 0.00, -2.88);
	CreateDynamicObject(700, 1704.84, -1893.49, 11.45,   357.00, 0.00, -40.00);
	CreateDynamicObject(700, 1699.64, -1851.67, 11.45,   357.00, 0.00, 11.00);
	CreateDynamicObject(700, 1785.69, -1879.08, 11.45,   357.00, 0.00, 11.00);
	CreateDynamicObject(700, 1786.60, -1851.10, 11.45,   357.00, 0.00, 76.00);
	CreateDynamicObject(700, 1760.52, -1837.78, 11.45,   357.00, 0.00, 40.00);
	CreateDynamicObject(673, 1730.92, -1829.57, 11.67,   356.86, 0.00, 3.14);
	CreateDynamicObject(673, 1778.11, -1842.48, 11.67,   357.00, 0.00, 25.00);
	CreateDynamicObject(673, 1721.27, -1898.99, 11.67,   357.00, 0.00, 55.00);
	CreateDynamicObject(673, 1757.97, -1899.37, 11.67,   357.00, 0.00, 91.00);
	CreateDynamicObject(5420, 1694.49, -1901.06, 7.19,   0.00, 0.00, 90.00);
	CreateDynamicObject(5420, 1729.00, -1901.06, 7.19,   0.00, 0.00, 90.00);
	CreateDynamicObject(5420, 1796.83, -1901.06, 7.19,   0.00, 0.00, 90.00);
	CreateDynamicObject(5420, 1763.04, -1901.06, 7.19,   0.00, 0.00, 90.00);
	CreateDynamicObject(5420, 1785.35, -1888.57, 7.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(5420, 1785.33, -1857.87, 7.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(5420, 1796.72, -1838.69, 7.19,   0.00, 0.00, 90.00);
	CreateDynamicObject(700, 1785.53, -1893.23, 11.45,   357.00, 0.00, 69.00);
	CreateDynamicObject(700, 1786.36, -1866.09, 11.45,   357.00, 0.00, 69.00);
	CreateDynamicObject(647, 1786.84, -1858.48, 14.63,   356.86, 0.00, -0.38);
	CreateDynamicObject(647, 1787.30, -1871.86, 14.63,   357.00, 0.00, 47.00);
	CreateDynamicObject(647, 1787.07, -1886.01, 14.63,   357.00, 0.00, 47.00);
	CreateDynamicObject(5420, 1793.20, -1888.57, 6.01,   0.00, 0.00, 0.00);
	CreateDynamicObject(5420, 1793.20, -1857.87, 5.97,   0.00, 0.00, 0.00);
	CreateDynamicObject(982, 1678.71, -1775.47, 10.12,   0.00, 0.00, 0.00);
	CreateDynamicObject(982, 1678.71, -1775.47, 8.83,   0.00, 0.00, 0.00);
	CreateDynamicObject(982, 1678.71, -1775.47, 7.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(982, 1678.71, -1775.47, 6.27,   0.00, 0.00, 0.00);
	CreateDynamicObject(982, 1678.71, -1775.47, 4.99,   0.00, 0.00, 0.00);
	CreateDynamicObject(982, 1678.71, -1775.47, 3.69,   0.00, 0.00, 0.00);
	CreateDynamicObject(6965, 1742.58, -1863.64, 15.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(18844, 1742.64, -1863.64, -36.83,   0.00, 0.00, 33.00);
	CreateDynamicObject(6964, 1742.51, -1863.15, 11.48,   0.00, 0.00, 0.00);
	CreateDynamicObject(18844, 1742.88, -1863.17, -37.08,   0.00, -25.00, 33.00);
	CreateDynamicObject(5420, 1814.60, -1857.87, 7.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(10032, 1805.89, -1870.99, 12.23,   -0.24, 0.00, -90.00);
	CreateDynamicObject(8397, 1741.63, -1881.62, -33.69,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1742.94, -1844.55, -33.69,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1760.17, -1864.56, -33.69,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1725.17, -1862.75, -33.69,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1728.92, -1876.13, -39.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1754.52, -1877.23, -39.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1731.29, -1849.93, -39.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1755.22, -1851.76, -39.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1727.53, -1855.44, -42.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1727.61, -1869.54, -42.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1735.07, -1878.62, -42.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1748.79, -1880.29, -42.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1757.27, -1872.21, -42.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1757.99, -1857.36, -42.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1750.39, -1847.59, -42.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1736.58, -1847.32, -42.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(16360, 1809.53, -1899.13, 12.57,   0.00, 0.00, 90.00);
	CreateDynamicObject(5420, 1814.60, -1869.26, 7.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(8656, 1673.06, -1895.45, 12.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(8658, 1675.10, -1878.87, 11.85,   0.00, 0.00, -57.50);
	CreateDynamicObject(8658, 1689.20, -1868.56, 11.85,   0.00, 0.00, -32.50);
	CreateDynamicObject(8658, 1696.94, -1854.49, 11.85,   0.00, 0.00, -10.50);
	CreateDynamicObject(8658, 1699.59, -1837.24, 11.85,   0.00, 0.00, 0.50);
	CreateDynamicObject(8658, 1714.29, -1822.31, 11.85,   0.00, 0.00, 90.00);
	CreateDynamicObject(8658, 1731.53, -1826.18, 11.85,   0.00, 0.00, 75.00);
	CreateDynamicObject(8658, 1748.66, -1830.73, 11.85,   0.00, 0.00, 75.00);
	CreateDynamicObject(8658, 1765.82, -1835.33, 11.85,   0.00, 0.00, 75.00);
	CreateDynamicObject(8658, 1782.89, -1839.90, 11.85,   0.00, 0.00, 75.00);
	CreateDynamicObject(5420, 1814.55, -1927.92, 6.92,   0.00, 0.00, 0.00);
	CreateDynamicObject(8397, 1696.78, -1856.65, -40.70,   0.00, 0.00, -16.00);
	CreateDynamicObject(8397, 1699.88, -1840.40, -40.70,   0.00, 0.00, -3.00);
	CreateDynamicObject(8397, 1700.15, -1822.93, -40.70,   0.00, 0.00, -3.00);
	CreateDynamicObject(8397, 1717.57, -1822.79, -40.70,   0.00, 0.00, -3.00);
	CreateDynamicObject(8397, 1734.14, -1827.24, -40.70,   0.00, 0.00, -13.50);
	CreateDynamicObject(8397, 1751.48, -1831.83, -40.70,   0.00, 0.00, -13.50);
	CreateDynamicObject(8397, 1768.67, -1836.26, -40.70,   0.00, 0.00, -13.50);
	CreateDynamicObject(8397, 1687.71, -1871.21, -40.70,   0.00, 0.00, -41.00);
	CreateDynamicObject(8397, 1673.25, -1880.51, -40.70,   0.00, 0.00, -30.50);
	CreateDynamicObject(8397, 1785.23, -1840.67, -40.70,   0.00, 0.00, -13.50);
	CreateDynamicObject(4895, 1899.16, -1936.37, 14.13,   0.00, 0.00, 0.00);
	CreateDynamicObject(5420, 1805.89, -1939.66, 7.19,   0.00, 0.00, 90.00);
	CreateDynamicObject(10032, 1805.61, -1956.77, 12.23,   -0.24, 0.00, -90.00);
	CreateDynamicObject(10032, 1794.84, -1956.18, 12.19,   -0.24, 0.00, 90.00);


	// Boundaries //
    RemoveBuildingForPlayer(playerid, 1283, 73.8125, -1543.1250, 7.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 7995, 1784.6797, 721.8359, 12.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 8028, 1735.8594, 519.1563, 25.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 8029, 1784.6797, 721.8359, 12.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 8056, 1735.8594, 519.1563, 25.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 8128, 1735.8750, 519.0078, 4.3594, 0.25);
	RemoveBuildingForPlayer(playerid, 8129, 1735.8750, 519.0078, 4.3594, 0.25);
	RemoveBuildingForPlayer(playerid, 1290, 1716.7813, 460.8906, 35.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1290, 1750.1094, 556.5469, 31.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 3332, 583.0859, 368.8750, 24.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 3332, 537.1953, 434.4063, 24.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 3332, 445.4219, 565.4688, 24.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 3333, -178.7188, 326.5391, -3.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 3333, -158.3516, 403.9063, -3.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 3333, 475.2344, 537.3203, 3.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 3332, 491.3125, 499.9375, 24.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 16431, 475.1250, 537.4375, 17.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 3382, -176.3516, 367.5234, 17.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 3382, -196.7891, 290.1797, 17.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 3382, -155.9844, 444.8906, 17.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 16688, -168.3203, 367.2422, 10.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 3381, -196.7891, 290.1797, 17.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 3330, -178.7188, 326.5391, -3.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 3381, -176.3516, 367.5234, 17.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 16358, -168.3203, 367.2422, 10.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 3330, -158.3516, 403.9063, -3.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 3381, -155.9844, 444.8906, 17.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 3331, 445.4219, 565.4688, 24.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 16357, 475.1250, 537.4375, 17.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 3330, 475.2344, 537.3203, 3.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 3331, 491.3125, 499.9375, 24.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 3331, 537.1953, 434.4063, 24.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 3331, 583.0859, 368.8750, 24.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 13317, 2766.8594, 468.0469, 7.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 3413, 2766.7578, 463.9922, -4.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 12831, 2766.8594, 468.0469, 7.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 3411, 2766.7578, 463.9922, -4.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 3412, 2766.7578, 464.1563, -4.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 17337, -967.9922, -341.2891, -27.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 17003, -967.9922, -341.2891, -27.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 17002, 52.8906, -1532.0313, 7.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 4504, 56.3828, -1531.4531, 6.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 4514, 440.0469, 587.4453, 19.7344, 0.25);
	RemoveBuildingForPlayer(playerid, 4515, 604.5234, 352.5391, 19.7344, 0.25);
	RemoveBuildingForPlayer(playerid, 4516, -141.3359, 468.6484, 12.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 4517, -193.8281, 269.5078, 12.8906, 0.25);
	CreateDynamicObject(971, 557.89, 425.61, 21.59,   0.00, 0.00, 33.20);
	CreateDynamicObject(971, 551.52, 421.38, 21.59,   0.00, 0.00, 34.40);
	CreateDynamicObject(971, 605.07, 346.46, 21.59,   0.00, 0.00, 34.40);
	CreateDynamicObject(971, 610.42, 350.08, 21.59,   0.00, 0.00, 33.20);
	CreateDynamicObject(8148, 554.41, 410.47, 21.83,   0.00, 0.00, 35.00);
	CreateDynamicObject(4515, 613.27, 339.24, 19.70,   3.50, 0.00, 212.39);
	CreateDynamicObject(8148, 567.11, 419.04, 21.69,   0.00, 0.00, 35.00);
	CreateDynamicObject(971, 551.52, 421.38, 25.34,   0.00, 0.00, 34.40);
	CreateDynamicObject(971, 557.89, 425.61, 25.36,   0.00, 0.00, 33.20);
	CreateDynamicObject(4515, 560.48, 414.36, 19.73,   356.86, 0.00, 198.50);
	CreateDynamicObject(4514, 423.53, 610.82, 19.73,   356.86, 0.00, 2.53);
	CreateDynamicObject(3330, 429.64, 604.12, 8.15,   3.14, 0.00, 2.53);
	CreateDynamicObject(4518, 1691.94, 386.35, 30.94,   0.00, 0.00, -104.50);
	CreateDynamicObject(4519, 2766.98, 312.28, 8.64,   0.00, 4.50, -90.00);
	CreateDynamicObject(971, 2765.60, 328.03, 10.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(971, 2767.84, 327.98, 10.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(971, 2765.49, 402.46, 8.27,   0.00, 0.00, 0.00);
	CreateDynamicObject(971, 2768.15, 402.49, 8.27,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1650.45, 219.48, 29.37,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1647.91, 218.06, 29.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1645.37, 216.50, 29.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1642.65, 214.12, 29.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1640.48, 211.80, 30.22,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1637.48, 207.90, 30.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(1425, 1644.03, 215.46, 30.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(1425, 1638.97, 209.84, 30.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1635.74, 205.70, 30.66,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1634.35, 201.76, 30.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(1425, 1635.71, 200.82, 31.48,   0.00, 0.00, 0.00);
	CreateDynamicObject(1425, 1651.77, 220.17, 30.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(981, 1727.65, 295.57, 16.24,   0.00, 0.00, 33.00);
	CreateDynamicObject(1237, 1729.93, 297.60, 17.17,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1724.60, 293.92, 17.17,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1723.03, 292.96, 17.17,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1664.09, 349.14, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1665.70, 346.19, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1667.35, 343.05, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1668.48, 339.73, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1669.31, 336.60, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1669.62, 333.51, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1669.75, 330.63, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1669.65, 327.90, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1669.22, 325.41, 29.25,   0.00, 0.00, 0.00);
	CreateDynamicObject(1425, 1669.63, 329.19, 29.64,   0.00, 0.00, -106.37);
	CreateDynamicObject(1425, 1669.20, 335.13, 29.64,   0.00, 0.00, -106.37);
	CreateDynamicObject(1425, 1668.03, 341.49, 29.64,   0.00, 0.00, -106.37);
	CreateDynamicObject(1425, 1664.63, 347.76, 29.64,   0.00, 0.00, -106.37);
	CreateDynamicObject(1425, 1668.54, 323.98, 29.64,   0.00, 0.00, -106.37);
	CreateDynamicObject(4518, 1685.94, 356.59, 30.76,   0.00, 0.00, 253.50);
	CreateDynamicObject(1237, 1633.39, 197.87, 31.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1632.28, 194.00, 31.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1631.32, 190.91, 31.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(1237, 1630.44, 187.32, 32.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(11504, -199.66, 253.02, 10.95,   0.00, 0.00, -14.51);
	CreateDynamicObject(11504, -198.75, 256.62, 7.49,   0.00, 0.00, -14.51);
	CreateDynamicObject(4508, -951.36, -254.96, 39.21,   3.14, 0.00, 49.77);
	CreateDynamicObject(972, -942.51, -268.79, 35.69,   0.00, 0.00, 80.35);
	CreateDynamicObject(972, -964.78, -265.02, 35.69,   0.00, 0.00, 80.35);
	CreateDynamicObject(972, -942.51, -268.79, 42.95,   0.00, 0.00, 80.35);
	CreateDynamicObject(972, -964.78, -265.02, 42.96,   0.00, 0.00, 80.35);
	CreateDynamicObject(698, -983.86, -237.80, 47.07,   356.86, 0.00, -1.97);
	CreateDynamicObject(698, -980.12, -220.11, 46.72,   357.00, 0.00, -40.00);
	CreateDynamicObject(698, -969.57, -227.91, 46.72,   357.00, 0.00, -105.00);
	CreateDynamicObject(698, -969.11, -241.20, 46.72,   357.00, 0.00, -62.00);
	CreateDynamicObject(698, -970.76, -253.61, 42.86,   357.00, 0.00, -91.00);
	CreateDynamicObject(790, -947.98, -124.79, 59.77,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -953.15, -139.36, 53.71,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -974.76, -144.07, 49.97,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -990.32, -156.42, 43.85,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -984.81, -181.96, 41.63,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -977.29, -177.77, 51.18,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -972.02, -197.04, 46.40,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -959.48, -166.80, 43.45,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -980.28, -181.79, 45.28,   3.14, 0.00, 2.30);
	CreateDynamicObject(790, -972.90, -203.66, 45.28,   3.14, 0.00, 2.30);
	CreateDynamicObject(8148, -978.47, -341.13, 38.40,   0.00, 0.00, -11.53);
	CreateDynamicObject(8148, -958.81, -344.96, 38.40,   0.00, 0.00, -11.53);
	CreateDynamicObject(972, -982.54, -423.02, 35.69,   0.00, 0.00, 80.35);
	CreateDynamicObject(972, -898.33, -1119.88, 97.81,   0.00, 0.00, -15.62);
	CreateDynamicObject(972, -832.47, -1304.10, 77.87,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -889.30, -1162.52, 101.97,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -864.53, -1162.52, 101.97,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -864.53, -1162.52, 94.66,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -864.53, -1162.52, 87.33,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -864.53, -1162.52, 80.03,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -889.30, -1162.52, 109.17,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -864.53, -1162.52, 109.14,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -763.18, -1396.99, 80.27,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -763.18, -1396.99, 87.52,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -738.25, -1396.99, 87.54,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -763.18, -1396.99, 80.27,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -738.25, -1396.99, 80.26,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -738.25, -1396.99, 72.89,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -738.25, -1396.99, 65.65,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -738.25, -1396.99, 58.29,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -713.36, -1396.97, 59.75,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -713.36, -1396.97, 67.05,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -688.44, -1396.74, 59.75,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -688.44, -1396.74, 67.01,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -316.17, -1777.08, 15.62,   0.00, 0.00, 65.45);
	CreateDynamicObject(972, -300.19, -1784.43, 15.62,   0.00, 0.00, 65.45);
	CreateDynamicObject(972, -300.19, -1784.43, 8.35,   0.00, 0.00, 65.45);
	CreateDynamicObject(972, -316.17, -1777.08, 8.35,   0.00, 0.00, 65.45);
	CreateDynamicObject(972, -277.80, -1794.72, 8.35,   0.00, 0.00, 65.45);
	CreateDynamicObject(972, -258.28, -1803.67, 8.35,   0.00, 0.00, 65.45);
	CreateDynamicObject(972, -258.28, -1803.67, 1.06,   0.00, 0.00, 65.45);
	CreateDynamicObject(972, -245.69, -1809.43, -6.18,   0.00, 0.00, 65.45);
	CreateDynamicObject(972, -61.72, -896.35, 11.80,   0.00, 0.00, 62.00);
	CreateDynamicObject(972, -61.72, -896.35, 19.10,   0.00, 0.00, 62.00);
	CreateDynamicObject(972, -83.39, -884.90, 11.80,   0.00, 0.00, 62.00);
	CreateDynamicObject(972, -83.39, -884.90, 4.44,   0.00, 0.00, 62.00);
	CreateDynamicObject(972, -83.39, -884.90, 19.09,   0.00, 0.00, 62.00);
	CreateDynamicObject(971, 92.21, -1015.85, 23.64,   0.00, 0.00, 90.00);
	CreateDynamicObject(971, 92.17, -1024.58, 23.64,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, 118.10, -1234.74, 13.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(972, 118.10, -1234.74, 20.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(972, 123.32, -1262.62, 18.27,   0.00, 0.00, 0.00);
	CreateDynamicObject(972, 123.32, -1262.62, 11.01,   0.00, 0.00, 0.00);
	CreateDynamicObject(972, -94.41, -935.64, 18.61,   0.00, 0.00, 62.00);
	CreateDynamicObject(9138, -1223.90, -838.54, 65.30,   0.00, 0.00, 33.00);
	CreateDynamicObject(9138, -1703.50, -1111.65, 71.98,   0.00, 0.00, -72.50);
	CreateDynamicObject(9138, -1805.37, -1144.95, 49.00,   0.00, 0.00, -72.50);
	CreateDynamicObject(9138, -1552.78, -1058.91, 130.68,   0.00, 0.00, -72.50);
	CreateDynamicObject(971, -1324.79, -1507.82, 25.95,   0.00, 0.00, 90.00);
	CreateDynamicObject(971, -1324.79, -1516.50, 25.95,   0.00, 0.00, 90.00);
	CreateDynamicObject(972, -950.04, -1498.22, 88.74,   0.00, 0.00, 0.00);
	CreateDynamicObject(9138, -820.99, -992.67, 85.20,   0.00, 0.00, -69.00);
	CreateDynamicObject(8148, -990.89, -502.33, 38.40,   0.00, 0.00, -11.53);
	CreateDynamicObject(8148, -990.89, -502.33, 32.10,   0.00, 0.00, -11.53);
	CreateDynamicObject(8148, -990.89, -502.33, 45.29,   0.00, 0.00, -11.53);
	CreateDynamicObject(8148, -990.89, -502.33, 52.32,   0.00, 0.00, -11.53);
	CreateDynamicObject(8148, -953.49, -631.65, 32.10,   0.00, 0.00, 40.47);
	CreateDynamicObject(8148, -953.49, -631.65, 39.52,   0.00, 0.00, 40.47);
	CreateDynamicObject(8148, -953.49, -631.65, 46.68,   0.00, 0.00, 40.47);
	CreateDynamicObject(8148, -953.49, -631.65, 52.40,   0.00, 0.00, 40.47);
	CreateDynamicObject(8148, -958.81, -344.96, 45.24,   0.00, 0.00, -11.53);
	CreateDynamicObject(8148, -971.42, -181.62, 38.40,   0.00, 0.00, -11.53);
	CreateDynamicObject(972, 44.51, -1020.34, 18.46,   0.00, 0.00, 0.00);
	CreateDynamicObject(8155, 15.64, -1519.36, 2.17,   0.00, 0.00, 171.00);
	CreateDynamicObject(8155, 15.64, -1519.36, 9.11,   0.00, 0.00, 171.00);
	CreateDynamicObject(8155, 15.64, -1519.36, 13.85,   0.00, 0.00, 171.00);
	CreateDynamicObject(1684, 42.40, -1523.93, 5.64,   0.00, 0.00, 41.00);
	CreateDynamicObject(972, 79.03, -1548.04, 4.32,   0.00, 0.00, 0.00);
	CreateDynamicObject(972, 88.64, -1567.14, 5.65,   7.50, 0.00, 197.50);
	CreateDynamicObject(972, 80.42, -1514.25, 3.80,   0.00, 0.00, -4.50);
	CreateDynamicObject(971, 82.63, -1529.13, 7.51,   0.00, 0.00, 86.50);
	CreateDynamicObject(972, 77.62, -1492.40, 3.80,   0.00, 0.00, 25.00);
	CreateDynamicObject(972, 77.62, -1492.40, -3.44,   0.00, 0.00, 25.00);
	CreateDynamicObject(972, 72.47, -1550.00, 3.83,   0.00, 0.00, 82.50);
	CreateDynamicObject(972, 47.67, -1546.77, 3.76,   0.00, 0.00, 82.50);
	CreateDynamicObject(972, 50.54, -1522.54, 4.08,   0.00, 0.00, 82.50);
	CreateDynamicObject(972, 72.17, -1525.39, 3.98,   0.00, 0.00, 82.50);
	CreateDynamicObject(1383, 16.34, -1505.31, 32.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(1384, 16.44, -1505.31, 64.95,   0.00, 0.00, -127.00);
	CreateDynamicObject(17002, 49.16, -1528.78, 44.35,   0.00, 0.00, 0.00);
	CreateDynamicObject(1387, 62.06, -1541.74, 49.32,   0.00, 0.00, 0.00);
	CreateDynamicObject(1387, 35.50, -1541.69, 49.32,   0.00, 0.00, 0.00);
	CreateDynamicObject(1387, 35.42, -1516.10, 49.32,   0.00, 0.00, 0.00);
	CreateDynamicObject(1387, 63.48, -1515.90, 49.32,   0.00, 0.00, 0.00);
	CreateDynamicObject(1365, 53.86, -1522.48, 5.29,   0.00, 0.00, 2.50);
	CreateDynamicObject(1685, 80.19, -1524.48, 4.71,   0.00, 0.00, 0.00);
	CreateDynamicObject(1685, 78.04, -1524.01, 4.71,   0.00, 0.00, 0.00);
	CreateDynamicObject(3502, 13.50, -1530.98, 4.78,   0.00, 0.00, 0.00);
	CreateDynamicObject(3502, 8.35, -1530.83, 3.98,   0.00, 0.00, 0.00);
	CreateDynamicObject(3502, 8.60, -1519.96, 4.19,   0.00, 0.00, -47.00);
	CreateDynamicObject(3504, 75.56, -1524.09, 5.43,   0.00, 0.00, 0.00);
	CreateDynamicObject(3504, 73.91, -1523.87, 5.07,   0.00, 0.00, 0.00);
	CreateDynamicObject(1278, 82.27, -1523.87, 1.19,   0.00, 0.00, -43.00);
	CreateDynamicObject(1278, 82.27, -1523.87, 1.56,   0.00, 0.00, -43.00);
	CreateDynamicObject(1278, 82.27, -1523.87, 1.97,   0.00, 0.00, -43.00);
	CreateDynamicObject(3864, 79.47, -1545.89, 10.43,   0.00, 0.00, -37.00);
	CreateDynamicObject(3864, 33.65, -1543.65, 10.09,   0.00, 0.00, -141.50);
	CreateDynamicObject(1425, 83.45, -1535.04, 4.84,   0.00, 0.00, 90.00);
	CreateDynamicObject(1425, 83.50, -1545.38, 5.13,   0.00, 0.00, 90.00);
	CreateDynamicObject(3474, 22.30, -1534.14, 10.08,   0.00, -6.00, 0.00);
	CreateDynamicObject(14878, 60.81, -1522.68, 4.65,   0.00, 0.00, 0.00);
	CreateDynamicObject(3626, 72.94, -1543.95, 5.57,   0.00, 2.00, 170.00);
	CreateDynamicObject(972, 91.98, -1589.57, 5.21,   -14.00, 0.00, 171.50);
	CreateDynamicObject(972, 70.10, -1468.04, -3.44,   0.00, 0.00, 6.00);
	CreateDynamicObject(972, 70.10, -1468.04, 3.78,   0.00, 0.00, 6.00);
	CreateDynamicObject(972, 625.25, -1191.14, 17.21,   0.00, 0.00, -67.50);
	CreateDynamicObject(972, 608.64, -1198.16, 17.10,   0.00, 0.00, -67.50);
	CreateDynamicObject(971, 775.17, -1332.00, 0.80,   0.00, 0.00, 48.50);
	CreateDynamicObject(971, 769.32, -1338.67, 0.80,   0.00, 0.00, 48.50);

	// Wang cars LS //
	RemoveBuildingForPlayer(playerid, 5931, 1114.3125, -1348.1016, 17.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 5935, 1120.1563, -1303.4531, 18.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 1085.7031, -1361.0234, 13.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, 1112.6172, -1389.8672, 15.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 5810, 1114.3125, -1348.1016, 17.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 5993, 1110.8984, -1328.8125, 13.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 5811, 1131.1953, -1380.4219, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 1141.9844, -1346.1094, 13.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 1148.6797, -1385.1875, 13.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 5737, 1120.1563, -1303.4531, 18.5703, 0.25);
	CreateDynamicObject(11317, 1119.60, -1365.84, 23.58,   0.00, 0.00, 90.00);
	CreateDynamicObject(5731, 1084.24, -1357.98, 15.42,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1103.69, -1366.05, -51.26,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1121.12, -1340.04, -45.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(4571, 1109.34, -1314.78, -48.12,   -11.86, 0.00, 0.00);
	CreateDynamicObject(4571, 1138.22, -1309.65, -51.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(5737, 1154.26, -1307.54, 6.01,   0.00, 0.00, 90.00);
	CreateDynamicObject(5737, 1151.37, -1291.60, 6.01,   0.00, 0.00, 90.00);
	CreateDynamicObject(19381, 1145.01, -1315.78, 18.30,   0.00, 90.00, 0.00);
	CreateDynamicObject(18766, 1139.73, -1315.79, 17.02,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1139.73, -1306.00, 14.96,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1139.73, -1296.21, 12.91,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1107.73, -1306.00, 14.96,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1107.73, -1296.21, 12.91,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1145.30, -1320.66, 18.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1140.07, -1320.17, -75.79,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1107.58, -1320.17, -75.79,   0.00, 0.00, 0.00);
	CreateDynamicObject(18766, 1144.80, -1311.16, 15.97,   0.00, 0.00, 0.00);
	CreateDynamicObject(18766, 1154.79, -1311.16, 15.97,   0.00, 0.00, 0.00);
	CreateDynamicObject(19381, 1145.52, -1306.59, 16.21,   0.00, 90.00, 0.00);
	CreateDynamicObject(18766, 1145.08, -1301.54, 13.98,   0.00, 0.00, 0.00);
	CreateDynamicObject(18766, 1145.01, -1291.28, 12.13,   0.00, 0.00, 0.00);
	CreateDynamicObject(18770, 1140.03, -1291.72, -82.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(19381, 1145.57, -1296.45, 13.92,   0.00, 90.00, 0.00);
	CreateDynamicObject(18770, 1107.25, -1291.80, -82.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(18766, 1090.59, -1339.49, 19.79,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1090.60, -1329.66, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1090.59, -1319.68, 18.82,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1090.60, -1315.42, 18.82,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1095.97, -1310.73, 18.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(18766, 1103.25, -1310.74, 18.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(18766, 1107.73, -1315.42, 18.82,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1149.52, -1296.21, 12.91,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1149.52, -1306.00, 14.96,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1149.52, -1315.79, 17.02,   0.00, 11.86, 90.00);
	CreateDynamicObject(18766, 1149.53, -1326.12, 17.99,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1149.53, -1336.12, 17.99,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1149.53, -1346.12, 17.99,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1148.00, -1365.04, 20.53,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1148.00, -1375.04, 20.53,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1149.56, -1378.84, 11.46,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1149.56, -1378.84, 16.45,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1149.50, -1380.16, 10.45,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1090.62, -1380.48, 14.74,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1149.56, -1378.84, 21.44,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1097.57, -1385.39, 14.77,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1097.57, -1385.39, 20.34,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1115.36, -1385.39, 20.34,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1128.51, -1385.39, 20.34,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1141.66, -1385.39, 20.34,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1115.36, -1385.39, 14.77,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1128.51, -1385.39, 14.77,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1141.66, -1385.39, 14.77,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1141.66, -1358.62, 20.34,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1128.54, -1358.62, 20.34,   0.00, 0.00, 90.00);
	CreateDynamicObject(3851, 1147.37, -1365.83, 20.34,   0.00, 0.00, 0.00);
	CreateDynamicObject(3850, 1121.27, -1372.29, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1117.85, -1372.29, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1114.43, -1372.29, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1112.70, -1370.52, 18.83,   0.00, 0.00, 0.00);
	CreateDynamicObject(3850, 1145.32, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1141.82, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1138.32, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1134.82, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1131.32, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1127.82, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1124.32, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1120.82, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1117.32, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1113.82, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1110.32, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1106.82, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1103.32, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1099.82, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1096.32, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(3850, 1092.82, -1378.15, 18.83,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1151.07, -1364.42, 17.91,   90.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1149.53, -1356.10, 17.99,   0.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1151.04, -1374.33, 17.91,   90.00, 0.00, 90.00);
	CreateDynamicObject(18766, 1087.64, -1355.28, 14.93,   90.00, 0.00, 90.00);

	
	return 1;
	
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
