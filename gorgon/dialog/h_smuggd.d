BEGIN h_smuggd

IF ~RandomNum(8,8)~ THEN BEGIN 0
   SAY @49000 /* I pick things up and I put things down. Just not in the same spot is all. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 1
   SAY @49001 /* In the depths, where the law fears to tread, that's where my deals are made. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 2
   SAY @49002 /* Spice, contraband, whatever you need, I'll have it at your door. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 3
   SAY @49003 /* You'll find no trail, no trace, of me or the cargo. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 4
   SAY @49004 /* Let others play with gold, we deal in things more... intriguing. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 5
   SAY @49005 /* The first rule of smuggling... never get caught! */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
   SAY @49006 /* Over the mountains and through the woods, I can go anywhere to deliver your goods. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 7
   SAY @49007 /* The best routes are known by few, and shared by fewer. */
IF ~~ THEN EXIT
END








