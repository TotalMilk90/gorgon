BEGIN h_bmarkd

IF ~True()~ THEN BEGIN 0
   SAY @18500 /* Feast your eyes on a selection of the deadliest concoctions. Arrows, darts, bolts and bullets that will leave your foes breathless and desperate. */
       ++ @18501 /* Show me what you have. */ GOTO 1
       ++ @18502 /* Not at this time. */ EXIT
END

IF ~~ THEN BEGIN 1
   SAY @18503 /* Right this way, my friend. */
IF ~~ THEN DO ~
   StartStore("h_bm1sto",LastTalkedToBy(Myself))~ EXIT
END
