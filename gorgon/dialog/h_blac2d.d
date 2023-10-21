BEGIN h_blac2d

IF ~Global("h_SpawnNewBlack","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Well, blow me down! Ariosh reckoned you could use a bit o' backup. Time for a little shadowplay, yeah? Let's show these bleeders what a real rumble's like!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnNewBlack","GLOBAL",1)
   SetGlobal("h_WhitewoodTalk","GLOBAL",2)~ EXIT
END

IF ~Dead("h_whitec")~ THEN BEGIN 1
   SAY ~Well, that was a right bloody party, wasn't it? Made a right mess of 'em. Back to the guild, then. Ariosh'll be itchin' for the full story.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END
