BEGIN h_europd

IF ~True()~ THEN BEGIN 0
   SAY ~No... please, get away... I don't want to go back...~
       ++ ~Shh, quiet girl. I won't take you back, don't worry.~ GOTO 1
       ++ ~Sorry girl, but I was hired for a job and I mean to finish it. Come along now.~ GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Please... castle... the north.~
IF ~~ THEN DO ~
   AddJournalEntry(@427,QUEST)
   GiveItemCreate("h_misc11",LastTalkedToBy,0,0,0)
   DestroySelf()~ EXIT
END
