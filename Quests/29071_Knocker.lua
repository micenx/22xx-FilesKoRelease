local Ret = 0;
local NPC= 29071;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then 
		EVENT = 101
	elseif (QuestNum > 1 and QuestNum < 100) then 
		NpcMsg(UID, 4174, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end

if (EVENT == 1001)then
	SelectMsg(UID, 2, 780, 23057, NPC, 10, 1002);
end

if (EVENT == 1002)then
	SelectMsg(UID, 2, 780, 23058, NPC, 3000, 1003,3005,-1);
	SaveEvent(UID, 13717);
end

if (EVENT == 1003)then
	SelectMsg(UID, 4, 780, 22986, NPC, 3000, 1004,3005,-1);
	SaveEvent(UID, 13719);
end

if (EVENT == 1004)then
	SelectMsg(UID, 2, 780, 23075, NPC, 3000,1005,4005,-1);
	SaveEvent(UID, 13718);
	SaveEvent(UID, 13729);
end

if (EVENT == 1005)then
	SelectMsg(UID, 2, 780, 23075, NPC, 3000,1006,4005,-1);
	SaveEvent(UID, 13718);
	SaveEvent(UID, 13729);
end

if (EVENT == 1007)then
	SelectMsg(UID, 2, 780, 23075, NPC, 3000,1006,4005,-1);
end

if (EVENT == 1006)then
ZoneChange(UID, 81, 203, 197)
end

if (EVENT == 1101)then
	SelectMsg(UID, 4, 781, 22988, NPC, 3000,1102,4005,-1);
end

if (EVENT == 1102)then
	SaveEvent(UID, 13729);
end

if (EVENT == 1106)then
	SaveEvent(UID, 13731);
end

if (EVENT == 1105)then
	QuestStatus = SearchQuest(UID, 781)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, 780, 23075, NPC, 3000,1006,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900318000);  
    ITEM2_COUNT = HowmuchItem(UID, 900319000); 	
	if (ITEM1_COUNT < 4 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 780, 23075, NPC, 3000,1006,4005,-1);
	else
	SelectMsg(UID, 4, 781, 22988, NPC, 22, 1107, 27, -1);
end
end
end

if (EVENT == 1107)then
RunExchange(UID,3229)
	SaveEvent(UID,13730)
	SaveEvent(UID,13741)
	end
	
if (EVENT == 1201)then
	SelectMsg(UID, 4, 783, 22992, NPC, 3000,1202,4005,-1);
end

if (EVENT == 1202)then
	SaveEvent(UID, 13753);
end

if (EVENT == 1206)then
	SaveEvent(UID, 13755);
end

if(EVENT == 1205) then
	ITEMA = HowmuchItem(UID, 900338000)	
	if(ITEMA < 1) then
		SelectMsg(UID, 2, 783, 22990, NPC, 18, -1);
	else
		SelectMsg(UID, 4, 783, 22990, NPC, 22, 1207,23,-1);
	end
end

if (EVENT == 1207)then
SelectMsg(UID, 2, 784, 23113, NPC, 10,1307,4005,-1);
RunExchange(UID,3231)
	SaveEvent(UID,13754)
	SaveEvent(UID,13765)
	end
	
if (EVENT == 1301)then
	SelectMsg(UID, 4, 784, 22994, NPC, 3000,1302,4005,-1);
end

if (EVENT == 1302)then
	SaveEvent(UID, 13765);
end

if (EVENT == 1306)then
	SaveEvent(UID, 13767);
end

if (EVENT == 1305)then
	QuestStatus = SearchQuest(UID, 784)	
	if(QuestStatus == 1) then
	SelectMsg(UID, 2, 784, 23113, NPC, 10,1307,4005,-1);
	else
	ITEM1_COUNT = HowmuchItem(UID, 900321000);  
    ITEM2_COUNT = HowmuchItem(UID, 900322000); 	
	if (ITEM1_COUNT < 4 and ITEM2_COUNT < 1) then
	SelectMsg(UID, 2, 784, 23113, NPC, 10,1307,4005,-1);
	else
	SelectMsg(UID, 4, 784, 22988, NPC, 22, 1308, 27, -1);
end
end
end

if (EVENT == 1307)then
ZoneChange(UID, 81, 203, 197)
end

if (EVENT == 1308)then
RunExchange(UID,3232)
	SaveEvent(UID,13766)
	SaveEvent(UID,13777)
	end
	
	
	
if (EVENT == 1401)then
	SelectMsg(UID, 2, 791, 23057, NPC, 22, 1402);
end

if (EVENT == 1402)then
	SelectMsg(UID, 2, 791, 23058, NPC, 3000, 1403,3005,-1);
	SaveEvent(UID, 13839);
end

if (EVENT == 1403)then
	SelectMsg(UID, 4, 791, 22986, NPC, 3000, 1404,3005,-1);
	SaveEvent(UID, 13841);
end

if (EVENT == 1404)then
SLOTKONTROL = CheckGiveSlot(UID, 2)
     if SLOTKONTROL == false then
       SelectMsg(UID,2,-1,8898,NPC,10)
         else
	SelectMsg(UID, 2, 791, 23185, NPC, 10,-1);
	SaveEvent(UID, 13840);
	SaveEvent(UID, 13851);
	RunExchange(UID,3239)
end
end

if (EVENT == 1501) then
	SelectMsg(UID, 4, 797, 23015, NPC, 22, 1502, 27, -1);
end

if (EVENT == 1502) then
	SaveEvent(UID, 13887);
end

if (EVENT == 1506) then
	SaveEvent(UID, 13889);
end

	if(EVENT == 1505) then
	ITEMA = HowmuchItem(UID, 370005000)	
	ITEMB = HowmuchItem(UID, 900000000)	
	if(ITEMA < 20 and ITEMA < 100000) then
		SelectMsg(UID, 2, 797, 23015, NPC, 18,1507);
	else
		SelectMsg(UID, 4, 797, 23015, NPC, 22, 1508,23,-1);
	end
end

if (EVENT == 1507 ) then
	ShowMap(UID, 415)
end

if (EVENT == 1508)then
	SelectMsg(UID, 2, 797, 23243, NPC, 10,-1);
	SaveEvent(UID, 13888);
	SaveEvent(UID, 13899);
	RunExchange(UID,3243)
	GiveItem(UID, 900337525)
end

