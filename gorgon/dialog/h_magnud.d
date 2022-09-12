BEGIN h_magnud

IF ~Global("h_MagnusBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY @7600 IF ~~ THEN EXIT
END

IF ~Global("h_MagnusBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY @7601
       ++ @7602 GOTO 10
       ++ @7603 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @7604
       ++ @7605 GOTO 3
       ++ @7606 GOTO 9
END

IF ~~ THEN BEGIN 3
   SAY @7607
       ++ @7608 GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @7609
       ++ @7610 GOTO 5
       ++ @7611 GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @7612 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @7613
       ++ @7614 GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @7615 IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @7616
       ++ @7617 GOTO 11
       ++ @7618 GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @7619
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_MagnusBounty","GLOBAL",2)
   AddJournalEntry(@442,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @7620
IF ~~ THEN DO ~
   DestroySelf()
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_KilledMagnus","GLOBAL",1)
   AddJournalEntry(@441,QUEST)
   GiveItemCreate("h_misc12",LastTalkedToBy,0,0,0)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY @7621
IF ~~ THEN DO ~
   DestroySelf()
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_KilledMagnus","GLOBAL",1)
   AddJournalEntry(@441,QUEST)
   GiveItemCreate("h_misc12",LastTalkedToBy,0,0,0)~ EXIT
END