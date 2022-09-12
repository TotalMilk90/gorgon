BEGIN h_yumild

IF ~True()~ THEN BEGIN 0
   SAY @10600 IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @10601
IF ~~ THEN DO ~
   AddJournalEntry(@203,USER)
   EscapeArea()~ EXIT
END
