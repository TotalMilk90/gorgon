BEGIN h_kageid

IF ~True()~ THEN BEGIN 0
   SAY @11200
       ++ @11201 EXIT
       ++ @11202 GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @11203
IF ~~ THEN DO ~
   StartStore("h_kagsto",LastTalkedToBy(Myself))~ EXIT
END
