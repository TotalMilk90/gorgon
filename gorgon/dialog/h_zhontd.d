BEGIN h_zhontd

IF ~Global("h_ZhontacBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY @11000 IF ~~ THEN EXIT
END

IF ~Global("h_ZhontacBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY @11001
       ++ @11002 GOTO 3
       ++ @11003 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @11004
       ++ @11005 GOTO 3
       ++ @11006 GOTO 11
END

IF ~~ THEN BEGIN 3
   SAY @11007 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @11008 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @11009
       ++ @11010 GOTO 6
       ++ @11011 GOTO 11
END

IF ~~ THEN BEGIN 6
   SAY @11012 IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @11013 IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @11014 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @11015 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @11016
       ++ @11017 GOTO 12
       ++ @11018 GOTO 10.5
       ++ @11019 GOTO 11
END

IF ~~ THEN BEGIN 10.5
   SAY @11020
       ++ @11021 GOTO 12
       ++ @11019 GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @11022
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",4)
   AddJournalEntry(@440,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
   SAY @11023
IF ~~ THEN DO ~
   SetGlobal("h_MagnusBounty","GLOBAL",1)
   SetGlobal("h_ZhontacBounty","GLOBAL",2)
   AddJournalEntry(@439,QUEST)~ EXIT

END

IF ~Global("h_ZhontacBounty","GLOBAL",2)~ THEN BEGIN NEW
   SAY @11024 IF ~~ THEN EXIT
END

IF ~Global("h_ZhontacBounty","GLOBAL",3)~ THEN BEGIN 13
   SAY @11025
       +~Global("h_MagnusBounty","GLOBAL",2)~+ @11026 GOTO 11
       +~Global("h_KilledMagnus","GLOBAL",1)~+ @11027 GOTO 14
       ++ @11028 EXIT
END

IF ~~ THEN BEGIN 14
   SAY @11029
       ++ @11030 GOTO 15
       ++ @11031 GOTO 16
END

IF ~~ THEN BEGIN 15
   SAY @11032
IF ~~ THEN DO ~
   SetGlobal("h_MagnusBounty","GLOBAL",3)
   AddJournalEntry(@443,QUEST)
   TakePartyItem("h_misc12")
   DestroyItem("h_misc12")
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 16
   SAY @11033
IF ~~ THEN DO ~
   SetGlobal("h_KilledMagnus","GLOBAL",2)
   AddJournalEntry(@440,QUEST)
   TakePartyItem("h_misc12")
   DestroyItem("h_misc12")
   Enemy()~ EXIT
END