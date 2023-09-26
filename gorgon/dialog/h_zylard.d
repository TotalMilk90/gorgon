BEGIN h_zylard

IF ~True()~ THEN BEGIN 0
   SAY ~You've got it boss. I'll handle this lot.~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnZylark","GLOBAL",2)~ EXIT
END

