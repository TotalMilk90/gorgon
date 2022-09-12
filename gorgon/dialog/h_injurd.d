BEGIN h_injurd

IF ~True()~ THEN BEGIN 1
   SAY @6400
       ++ @6401 GOTO 3
       ++ @6402 GOTO 3
       ++ @6403 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @6404 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @6405
       ++ @6406 GOTO 4
       ++ @6407 GOTO 5
END

IF ~~ THEN BEGIN 4
   SAY @6408 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @6409 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @6410 IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @6411
       ++ @6412 GOTO 9
       ++ @6413 GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @6414 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @6415
       ++ @6416 GOTO 10
       ++ @6417 GOTO 11
END

IF ~~ THEN BEGIN 10
   SAY @6418
IF ~~ THEN DO ~
   Kill("h_injurc")
   AddJournalEntry(@202,USER)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY @6419
IF ~~ THEN DO ~
   Kill("h_injurc")
   AddJournalEntry(@202,USER)~ EXIT
END

