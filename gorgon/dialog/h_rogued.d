BEGIN h_rogued

IF ~RandomNum(8,8)~ THEN BEGIN 0
   SAY @57500 /* Fancy a little game of 'finders keepers,' do ya? */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 1
   SAY @57501 /* You can never have too many lockpicks, or too few witnesses. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 2
   SAY @57502 /* The shadows are my sanctuary, and silence is my companion. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 3
   SAY @57503 /* Step lightly, speak softly, and you'll make it far in this line of work. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 4
   SAY @57504 /* A thief's best friend is patience, and a second-best friend is a sturdy lockpick. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 5
   SAY @57505 /* Know your mark, but don't let your mark know you. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
   SAY @57506 /* The key to a good heist? Timing and nerve, my friend. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 7
   SAY @57507 /* A good thief knows when to be patient and when to strike. */
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 6
   SAY @57508 /* Watch yer back in there, mate. */
IF ~~ THEN EXIT
END


