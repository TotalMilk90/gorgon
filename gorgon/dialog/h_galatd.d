BEGIN h_galatd

IF ~True()~ THEN BEGIN 0
   SAY @34000 /* 'elp!... me 'usband... he tried to kill me! */
       ++ @34001 /* Is your husband's name Isley? */ GOTO 1
       ++ @34002 /* Was Ilena here? */ GOTO 2
       ++ @34003 /* Here, let me help you. It's going to be ok. */ GOTO 3
END

IF ~~ THEN BEGIN 1
   SAY @34004 /* That... bastard. */
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY @34005 /* That... whore. */
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END

IF ~~ THEN BEGIN 3
   SAY @34006 /* I'm scared! Please... please help me... I don't want to die! */
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END
