BEGIN h_galatd

IF ~True()~ THEN BEGIN 0
   SAY ~'elp!... Me 'usband... he tried to kill me!~
       ++ ~Is your husbands name Isley?~ GOTO 1
       ++ ~Do you know if he as he with a woman named Ilena?~ GOTO 2
       ++ ~Here, let me help you. You're going to be ok.~ GOTO 3
END

IF ~~ THEN BEGIN 1
   SAY ~That... bastard.~
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~That... whore.~
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END

IF ~~ THEN BEGIN 3
   SAY ~I'm scared! Please... please help me... I don't want to die!~
IF ~~ THEN DO ~
   AddJournalEntry(@711,QUEST)
   Kill("h_galatc")~ EXIT
END
