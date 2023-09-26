BEGIN h_kageid

IF ~True()~ THEN BEGIN 0
   SAY ~Do you require any ammunition? I've personally crafted each piece myself.~
       ++ ~Sure, let me take a look.~ GOTO 1
       ++ ~Not at this time.~ EXIT
END

IF ~~ THEN BEGIN 1
   SAY ~Right this way.~
IF ~~ THEN DO ~
   StartStore("h_kagsto",LastTalkedToBy(Myself))~ EXIT
END
