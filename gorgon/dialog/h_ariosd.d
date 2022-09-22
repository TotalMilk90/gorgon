BEGIN h_ariosd

IF ~GlobalLT("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 1
   SAY @1400 IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9) Global("h_TalkedToAriosh","GLOBAL",0)~ THEN BEGIN CARNIVAL_0
   SAY @1401
       +~NumItemsParty("h_misc18",8)~+ @1402 GOTO CARNIVAL_5
       +~Gender(Player1,FEMALE) NumItemsPartyLT("h_misc18",8)~+ @1403 GOTO CARNIVAL_1
       +~Gender(Player1,MALE) NumItemsPartyLT("h_misc18",8)~+ @1403 GOTO CARNIVAL_2
       +~NumItemsPartyLT("h_misc18",8)~+ @1404 GOTO CARNIVAL_3
END

IF ~~ THEN BEGIN CARNIVAL_1
   SAY @1405
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CARNIVAL_2
   SAY @1406
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CARNIVAL_3
   SAY @1407
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9) Global("h_TalkedToAriosh","GLOBAL",1)~ THEN BEGIN CARNIVAL_4
   SAY @1408
       +~NumItemsParty("h_misc18",8)~+ @1409 GOTO CARNIVAL_5
       +~NumItemsPartyLT("h_misc18",8)~+ @1404 GOTO CARNIVAL_3
       +~NumItemsPartyLT("h_misc18",8)~+ @1410 EXIT
END

IF ~~ THEN BEGIN CARNIVAL_5
   SAY @1411
IF ~~ THEN DO ~
   SetGlobal("h_GuildThieves","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",10)
   AddJournalEntry(@322,QUEST)
   TakePartyItemAll("h_misc18")~ EXIT
END

IF ~Global("h_SpawnAriosh","GLOBAL",5)~ THEN BEGIN END_0
   SAY @1412 IF ~~ THEN EXIT
END

CHAIN
   IF ~Global("h_SpawnAriosh","GLOBAL",2)~ THEN h_ariosd 0
@1413
   =
@1414
   == h_baldwd
@1415
   =
@1416
   == h_ariosd
@1417
   == h_baldwd
@1418
   == h_eurynd
@1419
   == h_baldwd
@1420
   == h_rigald
@1421
   == h_baldwd   
@1422
   =
@1423
   DO ~
      SetGlobal("h_BaldwinQuest","GLOBAL",5)
      SetGlobal("h_SpawnAriosh","GLOBAL",3)
      SetGlobal("h_GuildItems","GLOBAL",1)
      SetGlobal("h_ShadowWar","GLOBAL",1)
      AddJournalEntry(@213,QUEST)~
EXIT
