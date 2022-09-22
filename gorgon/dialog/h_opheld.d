BEGIN h_opheld

IF ~True()~ THEN BEGIN 0
   SAY @11400
       ++ @11401 EXIT
       ++ @11402 GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @11403
IF ~~ THEN DO ~
   StartStore("h_ophsto",LastTalkedToBy(Myself))~ EXIT
END
