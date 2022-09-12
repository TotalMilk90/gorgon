BEGIN h_galatd

IF ~True()~ THEN BEGIN 0
   SAY @4600
       ++ @4601 GOTO 1
       ++ @4602 GOTO 2
       ++ @4603 GOTO 3
END

IF ~~ THEN BEGIN 1
   SAY @4604
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY @4605
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END

IF ~~ THEN BEGIN 3
   SAY @4606
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END
