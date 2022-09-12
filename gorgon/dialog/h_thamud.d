BEGIN h_thamud

IF ~Global("h_JoinShadow","GLOBAL",0)~ THEN BEGIN 0
   SAY @9800
       ++ @9801 GOTO 1
       ++ @9802 GOTO 2
       ++ @9803 GOTO 2
END

IF ~~ THEN BEGIN 1
   SAY @9804 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @9805 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @9806
       ++ @9807 GOTO 4
       ++ @9808 GOTO 5
       ++ @9809 GOTO 6
END

IF ~~ THEN BEGIN 4
   SAY @9810
       ++ @9808 GOTO 5
       ++ @9809 GOTO 6
END

IF ~~ THEN BEGIN 5
   SAY @9811
       ++ @9807 GOTO 4
       ++ @9809 GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @9812 IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @9813 IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @9814 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @9815
       ++ @9816 GOTO 10
       ++ @9817 GOTO 11
       ++ @9818 GOTO 13
END

IF ~~ THEN BEGIN 10
   SAY @9819
       ++ @9817 GOTO 11
       ++ @9818 GOTO 13
END

IF ~~ THEN BEGIN 11
   SAY @9820 IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @9821
       ++ @9816 GOTO 10
       ++ @9818 GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @9822
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",7)
   SetGlobal("h_ShadowWar","GLOBAL",4)
   SetGlobal("h_SpawnAriosh","GLOBAL",4)
   AddJournalEntry(@216,QUEST)~ EXIT
END




