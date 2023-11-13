BEGIN h_liedep

IF ~Global("KickedOut", "LOCALS", 0)~ THEN BEGIN 296
    SAY ~Oh, love, are you certain this is what you want? To send me away, back into the shadows alone?~ IF ~~ THEN GOTO 297
END

IF ~~ THEN BEGIN 297
   SAY ~A lone wolf I may be once more, but never will I forget the fire we've ignited in each other's hearts.~ IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298
   SAY ~I'll seek my destiny with the Shadow Thieves, delve into the depths of intrigue and danger once more. Perhaps it's there I'll find what I'm looking for, or perhaps... it's just another twist in the road.~ IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299
   SAY ~Goodbye, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("KickedOut", "LOCALS", 1)
   EscapeArea()~ EXIT
END