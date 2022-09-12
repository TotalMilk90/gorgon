BEGIN h_cmaidd

IF ~Global("h_TalkedToMaid","GLOBAL",0)~ THEN BEGIN 0
   SAY @3400
       ++ @3401 GOTO 1
       +~NumItemsParty("h_misc15",1)~+ @3402 GOTO 2
       +~NumItemsPartyGT("h_misc15",1)~+ @3403 GOTO 4
END

IF ~~ THEN BEGIN 1
   SAY @3404 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
   SAY @3405
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",1)~ EXIT
END

IF ~GlobalGT("h_TalkedToMaid","GLOBAL",0)~ THEN BEGIN 3
   SAY @3406
       ++ @3407 EXIT
       +~NumItemsPartyGT("h_misc15",1)~+ @3403 GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @3408
       ++ @3409 GOTO 5
       ++ @3410 DO ~
   Kill("h_cmaidc")
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@616,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY @3411
       ++ @3412 GOTO 6
       ++ @3413 DO ~
   Kill("h_cmaidc")
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@616,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6
   SAY @3414 IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @3415
       ++ @3416 GOTO 9
       ++ @3417 GOTO 8
       ++ @3418 DO ~
   Kill("h_cmaidc")
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@616,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY @3419
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@617,QUEST)
   GiveItemCreate("RING10",LastTalkedToBy,0,0,0)
   GiveItemCreate("MISC28",LastTalkedToBy,0,0,0)
   GiveGoldForce(25)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY @3420
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@617,QUEST)
   EscapeArea()~ EXIT
END
