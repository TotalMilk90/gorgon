BEGIN h_asnabd

IF ~Global("h_KatredaBounty","GLOBAL",3)~ THEN BEGIN 0
   SAY @1600 IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @1601
       ++ @1602 GOTO 2
       ++ @1603 GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @1604 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY @1605 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @1606 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @1607
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",4)
   AddJournalEntry(@435,QUEST)
   Enemy()~ EXIT
END


