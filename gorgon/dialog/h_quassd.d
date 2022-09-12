BEGIN h_quassd

IF ~True()~ THEN BEGIN 0
   SAY @8400
       ++ @8401 GOTO 1
       ++ @8402 GOTO 2
       ++ @8403 GOTO 10
END

IF ~~ THEN BEGIN 1
   SAY @8404 IF ~~ THEN GOTO 1.5
END

IF ~~ THEN BEGIN 1.5
   SAY @8405 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @8406 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @8407
       ++ @8408 GOTO 4
       ++ @8409 GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY @8410 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @8411
       ++ @8412 GOTO 6
       ++ @8413 GOTO 10
END

IF ~~ THEN BEGIN 6
   SAY @8414
       ++ @8415 GOTO 10
       ++ @8416 GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @8417 IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @8418 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @8419
IF ~~ THEN DO ~
   SetGlobal("h_BetrayBaldwin","GLOBAL",1)
   AddJournalEntry(@222,QUEST)
   GiveItemCreate("h_misc14",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @8420
IF ~~ THEN DO ~
   SetGlobal("h_ShadowWar","GLOBAL",7)
   Enemy()~ EXIT
END
