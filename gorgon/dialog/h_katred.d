BEGIN h_katred

IF ~Global("h_KatredaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY @7000 IF ~~ THEN EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY @7001 IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @7002 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @7003
       ++ @7004 GOTO 7
       ++ @7005 GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @7006 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @7007
       ++ @7008 GOTO 6
       ++ @7009 GOTO 7
END

IF ~~ THEN BEGIN 6
   SAY @7010
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",2)
   AddJournalEntry(@432,QUEST)
   ReputationInc(-1)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @7011
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",3)
   AddJournalEntry(@434,QUEST)
   CreateCreature("h_asnabc",[2004.3428],S)
   CreateCreature("h_huntec",[2073.3482],S)
   CreateCreature("h_huntec",[2148.3489],S)
   CreateCreature("h_huntec",[1936.3506],S)~ EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",3)~ THEN BEGIN 8
   SAY @7012
       ++ @7013 GOTO 6
       ++ @7014 GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @7015 IF ~~ THEN EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",4)~ THEN BEGIN 8
   SAY @7016 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @7017
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",5)
   AddJournalEntry(@436,QUEST)
   GiveItem("AMUL22",LastTalkedToBy)
   AddExperienceParty(600)
   ReputationInc(1)~ EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",5)~ THEN BEGIN 11
   SAY @7018 IF ~~ THEN EXIT
END



