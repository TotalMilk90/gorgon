BEGIN h_flam2d

IF ~True()~ THEN BEGIN 0
   SAY @4400
       +~Gender(Player1,FEMALE)~+ @4401 GOTO 1
       +~Gender(Player1,MALE)~+ @4401 GOTO 2
       ++ @4402 GOTO 3
       ++ @4403 GOTO 3
       ++ @4404 GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY @4405
       ++ @4402 GOTO 3
       ++ @4403 GOTO 3
       ++ @4404 GOTO 8
END

IF ~~ THEN BEGIN 2
   SAY @4406
       ++ @4402 GOTO 3
       ++ @4403 GOTO 3
       ++ @4404 GOTO 8
END

IF ~~ THEN BEGIN 3
   SAY @4407 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @4408
       ++ @4409 GOTO 5
       ++ @4410 GOTO 5
       ++ @4404 GOTO 8
END

IF ~~ THEN BEGIN 5
   SAY @4411
       ++ @4412 GOTO 7
       ++ @4413 GOTO 6
       ++ @4404 GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY @4414
IF ~~ THEN DO ~
   SetGlobal("h_FlamingFist","GLOBAL",4)
   AddJournalEntry(@328,QUEST)
   TakePartyItemNum("h_misc07",1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @4415
IF ~~ THEN DO ~
   SetGlobal("h_FlamingFist","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY @4416
IF ~~ THEN DO ~
   SetGlobal("h_FlamingFist","GLOBAL",3)
   AddJournalEntry(@329,QUEST)
   ReputationInc(-1)~ EXIT
END
