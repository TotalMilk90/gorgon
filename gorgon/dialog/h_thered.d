BEGIN h_thered

IF ~True()~ THEN BEGIN 0
   SAY @52000 /* Worst lay I've had in years. Can't a girl get a proper night-cap without all the disappointments? */ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @52001 /* Huh? What's your game, then? Think you can just waltz in here, looking for a go at it? */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @52002 /* Wait a minute... you're Gorgon's Eye! Well, well, looks like I'll find some satisfaction tonight after all. I hope you're ready to die, scum! */
IF ~~ THEN DO ~
   SetGlobal("h_TheresaTalk","GLOBAL",1)
   ReputationInc(-1)
   Enemy()~ EXIT
END