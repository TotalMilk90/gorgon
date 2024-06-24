BEGIN h_bmar2d

IF ~True()~ THEN BEGIN 0
   SAY @16500 /* Ah, a seeker of shadows and secrets. You'll find just what you need here. Poisons to lend a lethal edge, invisibility to slip through the shadows, and elixirs to sharpen your thieving senses. */
       ++ @16501 /* I'll take a look. */ GOTO 1
       ++ @16502 /* Maybe another time. */ EXIT
END

IF ~~ THEN BEGIN 1
   SAY @16503 /* Excellent. */
IF ~~ THEN DO ~
   StartStore("h_bm2sto",LastTalkedToBy(Myself))~ EXIT
END
