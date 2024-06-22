BEGIN h_hunted

IF ~RandomNum(5,5)~ THEN BEGIN 1
   SAY @37500 /* That dryad bitch put some type of mind-spell on Troi. Made him wander into the woods looking for bears! */
IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)~ THEN BEGIN 2
   SAY @37501 /* Asnabel once tracked a wyvern for three days straight. Now that's dedication. */
IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 3
   SAY @37502 /* Asnabel's got a plan, and you know what they say about Asnabel's plans... they never fail. */
IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 4
   SAY @37503 /* Remember the time Katreda turned a whole pack of wolves against us? She's cunning, that one. */
IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 5
   SAY @37504 /* Katreda thinks she's the guardian of this forest, but even the mightiest trees can fall to the lumberjack. */
IF ~~ THEN EXIT
END
