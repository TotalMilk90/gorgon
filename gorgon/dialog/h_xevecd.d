BEGIN h_xevecd

IF ~Global("h_GilbaldQuest","GLOBAL",4)~ THEN BEGIN 0
   SAY @10400
       ++ @10401 GOTO 1
       ++ @10402 GOTO 2
END

IF ~~ THEN BEGIN 1
   SAY @10403
       ++ @10404 GOTO 10
       ++ @10402 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @10405
       ++ @10406 GOTO 3
       ++ @10407 GOTO 4
       ++ @10408 GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY @10409
       ++ @10407 GOTO 4
       ++ @10408 GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY @10410
       ++ @10411 GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @10412 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @10413
       ++ @10414 GOTO 10
       ++ @10415 GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @10416 IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @10417
       ++ @10418 GOTO 9
       ++ @10419 GOTO 10
END

IF ~~ THEN BEGIN 9
   SAY @10420
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   AddJournalEntry(@613,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @10421
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   SetGlobal("h_KilledXevec","GLOBAL",1)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END
       
IF ~Global("h_GilbaldQuest","GLOBAL",5)~ THEN BEGIN 11
   SAY @10422
       +~Global("h_TalkedToMaid","GLOBAL",2)~+ @10423 GOTO 12
       ++ @10424 EXIT
END

IF ~~ THEN BEGIN 12
   SAY @10425
       ++ @10426 GOTO 14
       ++ @10427 GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @10428
IF ~~ THEN DO ~
   SetGlobal("h_DidNotKillXevec","GLOBAL",1)
   AddJournalEntry(@618,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14
   SAY @10421
IF ~~ THEN DO ~
   SetGlobal("h_KilledXevec","GLOBAL",2)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END

       
       
       
       
       



//I was celebrating a rather lucrative contract I had just received.
//None of that really matters anymore, Xevec.