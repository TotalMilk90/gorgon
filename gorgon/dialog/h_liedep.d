BEGIN h_liedep

IF ~Global("KickedOut", "LOCALS", 0)~ THEN BEGIN 0
   SAY ~A lone wolf I may be once more, but never will I forget the fire we've ignited in each other's hearts.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~I'll seek my destiny with the Shadow Thieves, delve into the depths of intrigue and danger once more.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Goodbye, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("KickedOut", "LOCALS", 1)
   EscapeArea()~ EXIT
END