BEGIN h_liedee

IF ~Global("KickedOut", "LOCALS", 0)~ THEN BEGIN Kickout
    SAY ~A lone wolf I may be once more, but never will I forget the fire we've ignited in each other's hearts.~ IF ~~ THEN GOTO Kickout1
END

IF ~~ THEN BEGIN Kickout1
   SAY ~I'll seek my destiny with the Shadow Thieves, delve into the depths of intrigue and danger once more.~ IF ~~ THEN GOTO Kickout2
END

IF ~~ THEN BEGIN Kickout2
   SAY ~Perhaps it's there I'll find what I'm looking for, or perhaps... it's just another twist in the road. Goodbye, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("KickedOut", "LOCALS", 1)
   EscapeArea()~ EXIT
END
