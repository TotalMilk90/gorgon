BEGIN h_aishad

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2) Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY @1000 IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1) Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY @1000
       ++ @1001 GOTO 3
       ++ @1002 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @1003
       ++ @1004 GOTO 3
       ++ @1005 GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY @1006 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @1007 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @1008 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @1009
       ++ @1010 GOTO 7
       ++ @1011 GOTO 10
END

IF ~~ THEN BEGIN 7
   SAY @1012
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",1)
   AddJournalEntry(@421,QUEST)~ EXIT
END

IF ~GlobalLT("h_AishaBounty","GLOBAL",4) GlobalGT("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 8
   SAY @1013
       +~Global("h_AishaBounty","GLOBAL",3)~+ @1014 GOTO 9
       +~GlobalLT("h_AishaBounty","GLOBAL",3)~+ @1015 EXIT
       +~GlobalLT("h_AishaBounty","GLOBAL",3)~+ @1016 GOTO 10
END

IF ~~ THEN BEGIN 9
   SAY @1017
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",4)
   AddJournalEntry(@423,QUEST)
   GiveItemCreate("AMUL04",LastTalkedToBy,0,0,0)
   AddExperienceParty(300)
   ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @1018
IF ~~ THEN DO ~
   Kill("h_aishac")
   SetGlobal("h_AishaBounty","GLOBAL",5)
   AddJournalEntry(@420,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~GlobalGT("h_AishaBounty","GLOBAL",3)~ THEN BEGIN 11
   SAY @1019 IF ~~ THEN EXIT
END