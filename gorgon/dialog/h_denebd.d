BEGIN h_denebd

IF ~True()~ THEN BEGIN 0
   SAY @3800
       ++ @3801 GOTO 1
       ++ @3802 GOTO 2
       ++ @3803 GOTO 2.5
       ++ @3804 GOTO 3
       ++ @3805 GOTO 3
END

IF ~~ THEN BEGIN 1
   SAY @3806
       ++ @3802 GOTO 2
       ++ @3803 GOTO 2.5
       ++ @3804 GOTO 3
       ++ @3805 GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @3807
       ++ @3801 GOTO 1
       ++ @3803 GOTO 2.5
       ++ @3804 GOTO 3
       ++ @3805 GOTO 3
END

IF ~~ THEN BEGIN 2.5
   SAY @3808
       ++ @3809 GOTO 3
       ++ @3801 GOTO 1
       ++ @3802 GOTO 2
       ++ @3804 GOTO 3
       ++ @3805 GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @3810 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @3811
IF ~~ THEN DO ~
   SetGlobal("h_SpawnDeneb","GLOBAL",3)
   AddJournalEntry(@211,QUEST)
   DayNight(MIDNIGHT)
   CreateCreature("h_snakec",[4229.516],S)
   CreateCreature("h_snakec",[4124.571],S)
   CreateCreature("h_snakec",[4209.652],S)
   CreateCreature("h_snakec",[4292.586],S)~ EXIT
END