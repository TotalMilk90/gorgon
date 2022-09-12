BEGIN h_europd

IF ~True()~ THEN BEGIN 0
   SAY @4000
       ++ @4001 GOTO 1
       ++ @4002 GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @4003
IF ~~ THEN DO ~
   AddJournalEntry(@427,QUEST)
   GiveItemCreate("h_misc11",LastTalkedToBy,0,0,0)
   DestroySelf()~ EXIT
END
