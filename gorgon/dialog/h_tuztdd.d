BEGIN h_tuztdd

IF ~True()~ THEN BEGIN 0
   SAY @10000 IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @10001
       ++ @10002 GOTO 2
       ++ @10003 GOTO 2
       ++ @10004 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @10005
IF ~~ THEN DO ~
   SetGlobal("h_SpawnEuropea","GLOBAL",3)
   Enemy()~ EXIT
END
